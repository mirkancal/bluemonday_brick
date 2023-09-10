import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_control.freezed.dart';
part 'version_control.g.dart';

@freezed
class VersionControl with _$VersionControl {
  const factory VersionControl({
    required int appStatus,
    required String androidMinVersion,
    required String iosMinVersion,
    required bool forceUpdate,
    required String appStoreUrl,
    required String playStoreUrl,
  }) = _VersionControl;

  factory VersionControl.fromJson(Map<String, dynamic> json) =>
      _$VersionControlFromJson(json);
}
