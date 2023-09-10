// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersionControl _$$_VersionControlFromJson(Map<String, dynamic> json) =>
    _$_VersionControl(
      appStatus: json['appStatus'] as int,
      androidMinVersion: json['androidMinVersion'] as String,
      iosMinVersion: json['iosMinVersion'] as String,
      forceUpdate: json['forceUpdate'] as bool,
      appStoreUrl: json['appStoreUrl'] as String,
      playStoreUrl: json['playStoreUrl'] as String,
    );

Map<String, dynamic> _$$_VersionControlToJson(_$_VersionControl instance) =>
    <String, dynamic>{
      'appStatus': instance.appStatus,
      'androidMinVersion': instance.androidMinVersion,
      'iosMinVersion': instance.iosMinVersion,
      'forceUpdate': instance.forceUpdate,
      'appStoreUrl': instance.appStoreUrl,
      'playStoreUrl': instance.playStoreUrl,
    };
