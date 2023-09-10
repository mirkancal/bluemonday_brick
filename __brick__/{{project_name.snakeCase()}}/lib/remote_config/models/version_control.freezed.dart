// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_control.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionControl _$VersionControlFromJson(Map<String, dynamic> json) {
  return _VersionControl.fromJson(json);
}

/// @nodoc
mixin _$VersionControl {
  int get appStatus => throw _privateConstructorUsedError;
  String get androidMinVersion => throw _privateConstructorUsedError;
  String get iosMinVersion => throw _privateConstructorUsedError;
  bool get forceUpdate => throw _privateConstructorUsedError;
  String get appStoreUrl => throw _privateConstructorUsedError;
  String get playStoreUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionControlCopyWith<VersionControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionControlCopyWith<$Res> {
  factory $VersionControlCopyWith(
          VersionControl value, $Res Function(VersionControl) then) =
      _$VersionControlCopyWithImpl<$Res, VersionControl>;
  @useResult
  $Res call(
      {int appStatus,
      String androidMinVersion,
      String iosMinVersion,
      bool forceUpdate,
      String appStoreUrl,
      String playStoreUrl});
}

/// @nodoc
class _$VersionControlCopyWithImpl<$Res, $Val extends VersionControl>
    implements $VersionControlCopyWith<$Res> {
  _$VersionControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStatus = null,
    Object? androidMinVersion = null,
    Object? iosMinVersion = null,
    Object? forceUpdate = null,
    Object? appStoreUrl = null,
    Object? playStoreUrl = null,
  }) {
    return _then(_value.copyWith(
      appStatus: null == appStatus
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as int,
      androidMinVersion: null == androidMinVersion
          ? _value.androidMinVersion
          : androidMinVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosMinVersion: null == iosMinVersion
          ? _value.iosMinVersion
          : iosMinVersion // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      appStoreUrl: null == appStoreUrl
          ? _value.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playStoreUrl: null == playStoreUrl
          ? _value.playStoreUrl
          : playStoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersionControlCopyWith<$Res>
    implements $VersionControlCopyWith<$Res> {
  factory _$$_VersionControlCopyWith(
          _$_VersionControl value, $Res Function(_$_VersionControl) then) =
      __$$_VersionControlCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int appStatus,
      String androidMinVersion,
      String iosMinVersion,
      bool forceUpdate,
      String appStoreUrl,
      String playStoreUrl});
}

/// @nodoc
class __$$_VersionControlCopyWithImpl<$Res>
    extends _$VersionControlCopyWithImpl<$Res, _$_VersionControl>
    implements _$$_VersionControlCopyWith<$Res> {
  __$$_VersionControlCopyWithImpl(
      _$_VersionControl _value, $Res Function(_$_VersionControl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStatus = null,
    Object? androidMinVersion = null,
    Object? iosMinVersion = null,
    Object? forceUpdate = null,
    Object? appStoreUrl = null,
    Object? playStoreUrl = null,
  }) {
    return _then(_$_VersionControl(
      appStatus: null == appStatus
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as int,
      androidMinVersion: null == androidMinVersion
          ? _value.androidMinVersion
          : androidMinVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosMinVersion: null == iosMinVersion
          ? _value.iosMinVersion
          : iosMinVersion // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      appStoreUrl: null == appStoreUrl
          ? _value.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playStoreUrl: null == playStoreUrl
          ? _value.playStoreUrl
          : playStoreUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionControl implements _VersionControl {
  const _$_VersionControl(
      {required this.appStatus,
      required this.androidMinVersion,
      required this.iosMinVersion,
      required this.forceUpdate,
      required this.appStoreUrl,
      required this.playStoreUrl});

  factory _$_VersionControl.fromJson(Map<String, dynamic> json) =>
      _$$_VersionControlFromJson(json);

  @override
  final int appStatus;
  @override
  final String androidMinVersion;
  @override
  final String iosMinVersion;
  @override
  final bool forceUpdate;
  @override
  final String appStoreUrl;
  @override
  final String playStoreUrl;

  @override
  String toString() {
    return 'VersionControl(appStatus: $appStatus, androidMinVersion: $androidMinVersion, iosMinVersion: $iosMinVersion, forceUpdate: $forceUpdate, appStoreUrl: $appStoreUrl, playStoreUrl: $playStoreUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionControl &&
            (identical(other.appStatus, appStatus) ||
                other.appStatus == appStatus) &&
            (identical(other.androidMinVersion, androidMinVersion) ||
                other.androidMinVersion == androidMinVersion) &&
            (identical(other.iosMinVersion, iosMinVersion) ||
                other.iosMinVersion == iosMinVersion) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.playStoreUrl, playStoreUrl) ||
                other.playStoreUrl == playStoreUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appStatus, androidMinVersion,
      iosMinVersion, forceUpdate, appStoreUrl, playStoreUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionControlCopyWith<_$_VersionControl> get copyWith =>
      __$$_VersionControlCopyWithImpl<_$_VersionControl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionControlToJson(
      this,
    );
  }
}

abstract class _VersionControl implements VersionControl {
  const factory _VersionControl(
      {required final int appStatus,
      required final String androidMinVersion,
      required final String iosMinVersion,
      required final bool forceUpdate,
      required final String appStoreUrl,
      required final String playStoreUrl}) = _$_VersionControl;

  factory _VersionControl.fromJson(Map<String, dynamic> json) =
      _$_VersionControl.fromJson;

  @override
  int get appStatus;
  @override
  String get androidMinVersion;
  @override
  String get iosMinVersion;
  @override
  bool get forceUpdate;
  @override
  String get appStoreUrl;
  @override
  String get playStoreUrl;
  @override
  @JsonKey(ignore: true)
  _$$_VersionControlCopyWith<_$_VersionControl> get copyWith =>
      throw _privateConstructorUsedError;
}
