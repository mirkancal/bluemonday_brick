import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:{{project_name.snakeCase()}}/app/utils/extensions/string_extensions.dart';
import 'package:{{project_name.snakeCase()}}/remote_config/service/remote_config_service.dart';
import 'package:{{project_name.snakeCase()}}/version/models/app_update.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:version/version.dart';

abstract class VersionService {
  Future<AppUpdateModel?> initialize();
  Future<String?> getAppVersion();
  bool mustUpdateApp();
  Future<AppUpdateModel?> getAppUpdateModel();
  void showVersionDialog(BuildContext context);
}

@Singleton(as: VersionService)
class VersionServiceImpl implements VersionService {
  VersionServiceImpl(this._remoteConfigService);

  final RemoteConfigService _remoteConfigService;
  AppUpdateModel? appUpdateModel;
  String? appVersion;
  bool? force;

  @override
  Future<AppUpdateModel?> initialize() async {
    await getAppVersion();
    return getAppUpdateModel();
  }

  @override
  Future<String?> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return appVersion = packageInfo.version;
  }

  @override
  bool mustUpdateApp() {
    try {
      if (appVersion == null) {
        return false;
      }
      final currentVersion = Version.parse(appVersion!);
      final requiredVersion = appUpdateModel!.requiredVersion;

      if (requiredVersion > currentVersion) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  @override
  Future<AppUpdateModel?> getAppUpdateModel() async {
    final versionControl =
        (_remoteConfigService as RemoteConfigServiceImpl).versionControl;
    if (versionControl == null) return null;

    try {
      return appUpdateModel = AppUpdateModel(
        appStoreUrl: versionControl.appStoreUrl,
        minIOSVersion: versionControl.iosMinVersion,
        playStoreUrl: versionControl.playStoreUrl,
        minAndroidVersion: versionControl.androidMinVersion,
        forceToUpdate: versionControl.forceUpdate,
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  @override
  Future<void> showVersionDialog(BuildContext context) async {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final navigator = Navigator.of(context);

    if (appUpdateModel == null || appVersion == null) {
      await initialize();
    }
    if (mustUpdateApp()) {
      // Save a reference to the NavigatorState

      // ignore: use_build_context_synchronously
      await showDialog<String>(
        context: context,
        barrierDismissible: !appUpdateModel!.forceToUpdate,
        builder: (BuildContext context) {
          const title = 'New Update Available';
          const body =
              'There is a newer version of app available please update it now.';
          const buttonText = 'Update Now';
          final titleTextStyle =
              textTheme.titleLarge?.copyWith(color: Colors.black);
          final bodyTextStyle =
              textTheme.bodyMedium?.copyWith(color: Colors.black);
          return WillPopScope(
            onWillPop: () async {
              return !appUpdateModel!.forceToUpdate;
            },
            child: Platform.isIOS
                ? CupertinoAlertDialog(
                    title: const Text(title),
                    content: const Text(body),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        child: const Text(
                          buttonText,
                        ),
                        onPressed: () =>
                            launchUrl(appUpdateModel!.storeUrl.toUri()),
                      ),
                      if (!appUpdateModel!.forceToUpdate)
                        CupertinoDialogAction(
                          isDestructiveAction: true,
                          onPressed: navigator.pop,
                          child: const Text(
                            'Cancel',
                          ),
                        ),
                    ],
                  )
                : AlertDialog(
                    title: Text(title, style: titleTextStyle),
                    content: Text(
                      body,
                      style: bodyTextStyle,
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text(
                          buttonText,
                        ),
                        onPressed: () =>
                            launchUrl(appUpdateModel!.storeUrl.toUri()),
                      ),
                      if (!appUpdateModel!.forceToUpdate)
                        TextButton(
                          onPressed: navigator.pop,
                          child: const Text(
                            'Cancel',
                          ),
                        )
                    ],
                  ),
          );
        },
      );
    }
  }
}
