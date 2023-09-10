import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/injectable.dart';
import 'package:{{project_name.snakeCase()}}/remote_config/models/version_control.dart';

abstract class RemoteConfigService {
  Future<void> initialise();
  Map<String, RemoteConfigValue> get allValues;
}

@Singleton(as: RemoteConfigService)
@preResolve
class RemoteConfigServiceImpl implements RemoteConfigService {
  RemoteConfigServiceImpl({required FirebaseRemoteConfig remoteConfig})
      : _remoteConfig = remoteConfig;
  final FirebaseRemoteConfig _remoteConfig;

  static RemoteConfigServiceImpl? _instance;

  @factoryMethod
  static Future<RemoteConfigService> create() async {
    if (_instance == null) {
      _instance = RemoteConfigServiceImpl(
        remoteConfig: getIt<FirebaseRemoteConfig>(),
      );
      await _instance!.initialise();
    }
    return _instance!;
  }

  @override
  Future<void> initialise() async {
    try {
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval:
              kDebugMode ? Duration.zero : const Duration(minutes: 1),
        ),
      );
      await _remoteConfig.fetchAndActivate();
    } catch (e) {
      if (kDebugMode) {
        print(
          'Unable to fetch remote config. Cached or default values will be used',
        );
      }
    }
  }

  @override
  Map<String, RemoteConfigValue> get allValues => _remoteConfig.getAll();

  RemoteConfigValue? get _versionControlValue => allValues['version_control'];

  VersionControl? get versionControl {
    if (_versionControlValue == null) return null;
    final json = _versionControlValue!.asString();
    return VersionControl.fromJson(jsonDecode(json) as Map<String, dynamic>);
  }
}
