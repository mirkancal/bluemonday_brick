import 'dart:io';

import 'package:version/version.dart';

class AppUpdateModel {
  AppUpdateModel({
    required this.appStoreUrl,
    required this.playStoreUrl,
    required this.minAndroidVersion,
    required this.minIOSVersion,
    required this.forceToUpdate,
  });

  String appStoreUrl;
  String playStoreUrl;
  String minAndroidVersion;
  String minIOSVersion;
  bool forceToUpdate;

  Version get requiredVersion =>
      Version.parse(Platform.isAndroid ? minAndroidVersion : minIOSVersion);

  String get storeUrl => Platform.isAndroid ? playStoreUrl : appStoreUrl;
}
