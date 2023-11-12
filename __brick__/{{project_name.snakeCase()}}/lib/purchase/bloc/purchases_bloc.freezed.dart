// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchases_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PurchasesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesEventCopyWith<$Res> {
  factory $PurchasesEventCopyWith(
          PurchasesEvent value, $Res Function(PurchasesEvent) then) =
      _$PurchasesEventCopyWithImpl<$Res, PurchasesEvent>;
}

/// @nodoc
class _$PurchasesEventCopyWithImpl<$Res, $Val extends PurchasesEvent>
    implements $PurchasesEventCopyWith<$Res> {
  _$PurchasesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PurchasesEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PurchaseCopyWith<$Res> {
  factory _$$_PurchaseCopyWith(
          _$_Purchase value, $Res Function(_$_Purchase) then) =
      __$$_PurchaseCopyWithImpl<$Res>;
  @useResult
  $Res call({SubscriptionPackage package});
}

/// @nodoc
class __$$_PurchaseCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$_Purchase>
    implements _$$_PurchaseCopyWith<$Res> {
  __$$_PurchaseCopyWithImpl(
      _$_Purchase _value, $Res Function(_$_Purchase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
  }) {
    return _then(_$_Purchase(
      null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as SubscriptionPackage,
    ));
  }
}

/// @nodoc

class _$_Purchase with DiagnosticableTreeMixin implements _Purchase {
  const _$_Purchase(this.package);

  @override
  final SubscriptionPackage package;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesEvent.purchase(package: $package)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasesEvent.purchase'))
      ..add(DiagnosticsProperty('package', package));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Purchase &&
            (identical(other.package, package) || other.package == package));
  }

  @override
  int get hashCode => Object.hash(runtimeType, package);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseCopyWith<_$_Purchase> get copyWith =>
      __$$_PurchaseCopyWithImpl<_$_Purchase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) {
    return purchase(package);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) {
    return purchase?.call(package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) {
    return purchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) {
    return purchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) {
    if (purchase != null) {
      return purchase(this);
    }
    return orElse();
  }
}

abstract class _Purchase implements PurchasesEvent {
  const factory _Purchase(final SubscriptionPackage package) = _$_Purchase;

  SubscriptionPackage get package;
  @JsonKey(ignore: true)
  _$$_PurchaseCopyWith<_$_Purchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RestoreCopyWith<$Res> {
  factory _$$_RestoreCopyWith(
          _$_Restore value, $Res Function(_$_Restore) then) =
      __$$_RestoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RestoreCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$_Restore>
    implements _$$_RestoreCopyWith<$Res> {
  __$$_RestoreCopyWithImpl(_$_Restore _value, $Res Function(_$_Restore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Restore with DiagnosticableTreeMixin implements _Restore {
  const _$_Restore();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesEvent.restore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesEvent.restore'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Restore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) {
    return restore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) {
    return restore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class _Restore implements PurchasesEvent {
  const factory _Restore() = _$_Restore;
}

/// @nodoc
abstract class _$$_ConfirmPurchaseSuccessCopyWith<$Res> {
  factory _$$_ConfirmPurchaseSuccessCopyWith(_$_ConfirmPurchaseSuccess value,
          $Res Function(_$_ConfirmPurchaseSuccess) then) =
      __$$_ConfirmPurchaseSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConfirmPurchaseSuccessCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$_ConfirmPurchaseSuccess>
    implements _$$_ConfirmPurchaseSuccessCopyWith<$Res> {
  __$$_ConfirmPurchaseSuccessCopyWithImpl(_$_ConfirmPurchaseSuccess _value,
      $Res Function(_$_ConfirmPurchaseSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConfirmPurchaseSuccess
    with DiagnosticableTreeMixin
    implements _ConfirmPurchaseSuccess {
  const _$_ConfirmPurchaseSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesEvent.confirmPurchaseSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PurchasesEvent.confirmPurchaseSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmPurchaseSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) {
    return confirmPurchaseSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) {
    return confirmPurchaseSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) {
    if (confirmPurchaseSuccess != null) {
      return confirmPurchaseSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) {
    return confirmPurchaseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) {
    return confirmPurchaseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) {
    if (confirmPurchaseSuccess != null) {
      return confirmPurchaseSuccess(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPurchaseSuccess implements PurchasesEvent {
  const factory _ConfirmPurchaseSuccess() = _$_ConfirmPurchaseSuccess;
}

/// @nodoc
abstract class _$$_SelectPackageCopyWith<$Res> {
  factory _$$_SelectPackageCopyWith(
          _$_SelectPackage value, $Res Function(_$_SelectPackage) then) =
      __$$_SelectPackageCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_SelectPackageCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$_SelectPackage>
    implements _$$_SelectPackageCopyWith<$Res> {
  __$$_SelectPackageCopyWithImpl(
      _$_SelectPackage _value, $Res Function(_$_SelectPackage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_SelectPackage(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectPackage with DiagnosticableTreeMixin implements _SelectPackage {
  const _$_SelectPackage(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesEvent.selectPackage(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasesEvent.selectPackage'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectPackage &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectPackageCopyWith<_$_SelectPackage> get copyWith =>
      __$$_SelectPackageCopyWithImpl<_$_SelectPackage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) {
    return selectPackage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) {
    return selectPackage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) {
    if (selectPackage != null) {
      return selectPackage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) {
    return selectPackage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) {
    return selectPackage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) {
    if (selectPackage != null) {
      return selectPackage(this);
    }
    return orElse();
  }
}

abstract class _SelectPackage implements PurchasesEvent {
  const factory _SelectPackage(final int index) = _$_SelectPackage;

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectPackageCopyWith<_$_SelectPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ToggleTrialCopyWith<$Res> {
  factory _$$_ToggleTrialCopyWith(
          _$_ToggleTrial value, $Res Function(_$_ToggleTrial) then) =
      __$$_ToggleTrialCopyWithImpl<$Res>;
  @useResult
  $Res call({bool trialEnabled});
}

/// @nodoc
class __$$_ToggleTrialCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$_ToggleTrial>
    implements _$$_ToggleTrialCopyWith<$Res> {
  __$$_ToggleTrialCopyWithImpl(
      _$_ToggleTrial _value, $Res Function(_$_ToggleTrial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trialEnabled = null,
  }) {
    return _then(_$_ToggleTrial(
      trialEnabled: null == trialEnabled
          ? _value.trialEnabled
          : trialEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToggleTrial with DiagnosticableTreeMixin implements _ToggleTrial {
  const _$_ToggleTrial({required this.trialEnabled});

  @override
  final bool trialEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesEvent.toggleTrial(trialEnabled: $trialEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasesEvent.toggleTrial'))
      ..add(DiagnosticsProperty('trialEnabled', trialEnabled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleTrial &&
            (identical(other.trialEnabled, trialEnabled) ||
                other.trialEnabled == trialEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trialEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleTrialCopyWith<_$_ToggleTrial> get copyWith =>
      __$$_ToggleTrialCopyWithImpl<_$_ToggleTrial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) {
    return toggleTrial(trialEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) {
    return toggleTrial?.call(trialEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) {
    if (toggleTrial != null) {
      return toggleTrial(trialEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) {
    return toggleTrial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) {
    return toggleTrial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) {
    if (toggleTrial != null) {
      return toggleTrial(this);
    }
    return orElse();
  }
}

abstract class _ToggleTrial implements PurchasesEvent {
  const factory _ToggleTrial({required final bool trialEnabled}) =
      _$_ToggleTrial;

  bool get trialEnabled;
  @JsonKey(ignore: true)
  _$$_ToggleTrialCopyWith<_$_ToggleTrial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PremiumEventCopyWith<$Res> {
  factory _$$_PremiumEventCopyWith(
          _$_PremiumEvent value, $Res Function(_$_PremiumEvent) then) =
      __$$_PremiumEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PremiumEventCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$_PremiumEvent>
    implements _$$_PremiumEventCopyWith<$Res> {
  __$$_PremiumEventCopyWithImpl(
      _$_PremiumEvent _value, $Res Function(_$_PremiumEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PremiumEvent with DiagnosticableTreeMixin implements _PremiumEvent {
  const _$_PremiumEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesEvent.premiumEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesEvent.premiumEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PremiumEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionPackage package) purchase,
    required TResult Function() restore,
    required TResult Function() confirmPurchaseSuccess,
    required TResult Function(int index) selectPackage,
    required TResult Function(bool trialEnabled) toggleTrial,
    required TResult Function() premiumEvent,
  }) {
    return premiumEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionPackage package)? purchase,
    TResult? Function()? restore,
    TResult? Function()? confirmPurchaseSuccess,
    TResult? Function(int index)? selectPackage,
    TResult? Function(bool trialEnabled)? toggleTrial,
    TResult? Function()? premiumEvent,
  }) {
    return premiumEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionPackage package)? purchase,
    TResult Function()? restore,
    TResult Function()? confirmPurchaseSuccess,
    TResult Function(int index)? selectPackage,
    TResult Function(bool trialEnabled)? toggleTrial,
    TResult Function()? premiumEvent,
    required TResult orElse(),
  }) {
    if (premiumEvent != null) {
      return premiumEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Purchase value) purchase,
    required TResult Function(_Restore value) restore,
    required TResult Function(_ConfirmPurchaseSuccess value)
        confirmPurchaseSuccess,
    required TResult Function(_SelectPackage value) selectPackage,
    required TResult Function(_ToggleTrial value) toggleTrial,
    required TResult Function(_PremiumEvent value) premiumEvent,
  }) {
    return premiumEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Purchase value)? purchase,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult? Function(_SelectPackage value)? selectPackage,
    TResult? Function(_ToggleTrial value)? toggleTrial,
    TResult? Function(_PremiumEvent value)? premiumEvent,
  }) {
    return premiumEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Purchase value)? purchase,
    TResult Function(_Restore value)? restore,
    TResult Function(_ConfirmPurchaseSuccess value)? confirmPurchaseSuccess,
    TResult Function(_SelectPackage value)? selectPackage,
    TResult Function(_ToggleTrial value)? toggleTrial,
    TResult Function(_PremiumEvent value)? premiumEvent,
    required TResult orElse(),
  }) {
    if (premiumEvent != null) {
      return premiumEvent(this);
    }
    return orElse();
  }
}

abstract class _PremiumEvent implements PurchasesEvent {
  const factory _PremiumEvent() = _$_PremiumEvent;
}

/// @nodoc
mixin _$PurchasesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesStateCopyWith<$Res> {
  factory $PurchasesStateCopyWith(
          PurchasesState value, $Res Function(PurchasesState) then) =
      _$PurchasesStateCopyWithImpl<$Res, PurchasesState>;
}

/// @nodoc
class _$PurchasesStateCopyWithImpl<$Res, $Val extends PurchasesState>
    implements $PurchasesStateCopyWith<$Res> {
  _$PurchasesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PurchasesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PurchasesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FetchLodingCopyWith<$Res> {
  factory _$$_FetchLodingCopyWith(
          _$_FetchLoding value, $Res Function(_$_FetchLoding) then) =
      __$$_FetchLodingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchLodingCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_FetchLoding>
    implements _$$_FetchLodingCopyWith<$Res> {
  __$$_FetchLodingCopyWithImpl(
      _$_FetchLoding _value, $Res Function(_$_FetchLoding) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchLoding with DiagnosticableTreeMixin implements _FetchLoding {
  const _$_FetchLoding();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.fetchLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesState.fetchLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchLoding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return fetchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return fetchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (fetchLoading != null) {
      return fetchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return fetchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return fetchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (fetchLoading != null) {
      return fetchLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchLoding implements PurchasesState {
  const factory _FetchLoding() = _$_FetchLoding;
}

/// @nodoc
abstract class _$$_WaitingToRestoreCopyWith<$Res> {
  factory _$$_WaitingToRestoreCopyWith(
          _$_WaitingToRestore value, $Res Function(_$_WaitingToRestore) then) =
      __$$_WaitingToRestoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WaitingToRestoreCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_WaitingToRestore>
    implements _$$_WaitingToRestoreCopyWith<$Res> {
  __$$_WaitingToRestoreCopyWithImpl(
      _$_WaitingToRestore _value, $Res Function(_$_WaitingToRestore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WaitingToRestore
    with DiagnosticableTreeMixin
    implements _WaitingToRestore {
  const _$_WaitingToRestore();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.waitingToRestore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PurchasesState.waitingToRestore'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WaitingToRestore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return waitingToRestore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return waitingToRestore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (waitingToRestore != null) {
      return waitingToRestore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return waitingToRestore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return waitingToRestore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (waitingToRestore != null) {
      return waitingToRestore(this);
    }
    return orElse();
  }
}

abstract class _WaitingToRestore implements PurchasesState {
  const factory _WaitingToRestore() = _$_WaitingToRestore;
}

/// @nodoc
abstract class _$$_WaitingToPurchaseCopyWith<$Res> {
  factory _$$_WaitingToPurchaseCopyWith(_$_WaitingToPurchase value,
          $Res Function(_$_WaitingToPurchase) then) =
      __$$_WaitingToPurchaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WaitingToPurchaseCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_WaitingToPurchase>
    implements _$$_WaitingToPurchaseCopyWith<$Res> {
  __$$_WaitingToPurchaseCopyWithImpl(
      _$_WaitingToPurchase _value, $Res Function(_$_WaitingToPurchase) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WaitingToPurchase
    with DiagnosticableTreeMixin
    implements _WaitingToPurchase {
  const _$_WaitingToPurchase();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.waitingToPurchase()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PurchasesState.waitingToPurchase'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WaitingToPurchase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return waitingToPurchase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return waitingToPurchase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (waitingToPurchase != null) {
      return waitingToPurchase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return waitingToPurchase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return waitingToPurchase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (waitingToPurchase != null) {
      return waitingToPurchase(this);
    }
    return orElse();
  }
}

abstract class _WaitingToPurchase implements PurchasesState {
  const factory _WaitingToPurchase() = _$_WaitingToPurchase;
}

/// @nodoc
abstract class _$$PurchasedCopyWith<$Res> {
  factory _$$PurchasedCopyWith(
          _$Purchased value, $Res Function(_$Purchased) then) =
      __$$PurchasedCopyWithImpl<$Res>;
  @useResult
  $Res call({SubscriptionPackage package});
}

/// @nodoc
class __$$PurchasedCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$Purchased>
    implements _$$PurchasedCopyWith<$Res> {
  __$$PurchasedCopyWithImpl(
      _$Purchased _value, $Res Function(_$Purchased) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
  }) {
    return _then(_$Purchased(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as SubscriptionPackage,
    ));
  }
}

/// @nodoc

class _$Purchased with DiagnosticableTreeMixin implements Purchased {
  const _$Purchased({required this.package});

  @override
  final SubscriptionPackage package;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.purchased(package: $package)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasesState.purchased'))
      ..add(DiagnosticsProperty('package', package));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Purchased &&
            (identical(other.package, package) || other.package == package));
  }

  @override
  int get hashCode => Object.hash(runtimeType, package);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchasedCopyWith<_$Purchased> get copyWith =>
      __$$PurchasedCopyWithImpl<_$Purchased>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return purchased(package);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return purchased?.call(package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (purchased != null) {
      return purchased(package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return purchased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return purchased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (purchased != null) {
      return purchased(this);
    }
    return orElse();
  }
}

abstract class Purchased implements PurchasesState {
  const factory Purchased({required final SubscriptionPackage package}) =
      _$Purchased;

  SubscriptionPackage get package;
  @JsonKey(ignore: true)
  _$$PurchasedCopyWith<_$Purchased> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoredCopyWith<$Res> {
  factory _$$RestoredCopyWith(
          _$Restored value, $Res Function(_$Restored) then) =
      __$$RestoredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoredCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$Restored>
    implements _$$RestoredCopyWith<$Res> {
  __$$RestoredCopyWithImpl(_$Restored _value, $Res Function(_$Restored) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Restored with DiagnosticableTreeMixin implements Restored {
  const _$Restored();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.restored()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesState.restored'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Restored);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return restored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return restored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (restored != null) {
      return restored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return restored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return restored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (restored != null) {
      return restored(this);
    }
    return orElse();
  }
}

abstract class Restored implements PurchasesState {
  const factory Restored() = _$Restored;
}

/// @nodoc
abstract class _$$ItemsReadyCopyWith<$Res> {
  factory _$$ItemsReadyCopyWith(
          _$ItemsReady value, $Res Function(_$ItemsReady) then) =
      __$$ItemsReadyCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<SubscriptionPackage> items,
      int selectedIndex,
      bool trialEnabled,
      OneTimeOffers? oneTimeOffers});
}

/// @nodoc
class __$$ItemsReadyCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$ItemsReady>
    implements _$$ItemsReadyCopyWith<$Res> {
  __$$ItemsReadyCopyWithImpl(
      _$ItemsReady _value, $Res Function(_$ItemsReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? selectedIndex = null,
    Object? trialEnabled = null,
    Object? oneTimeOffers = freezed,
  }) {
    return _then(_$ItemsReady(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionPackage>,
      null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      trialEnabled: null == trialEnabled
          ? _value.trialEnabled
          : trialEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      oneTimeOffers: freezed == oneTimeOffers
          ? _value.oneTimeOffers
          : oneTimeOffers // ignore: cast_nullable_to_non_nullable
              as OneTimeOffers?,
    ));
  }
}

/// @nodoc

class _$ItemsReady with DiagnosticableTreeMixin implements ItemsReady {
  const _$ItemsReady(final List<SubscriptionPackage> items, this.selectedIndex,
      {this.trialEnabled = false, this.oneTimeOffers})
      : _items = items;

  final List<SubscriptionPackage> _items;
  @override
  List<SubscriptionPackage> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int selectedIndex;
  @override
  @JsonKey()
  final bool trialEnabled;
  @override
  final OneTimeOffers? oneTimeOffers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.itemsReady(items: $items, selectedIndex: $selectedIndex, trialEnabled: $trialEnabled, oneTimeOffers: $oneTimeOffers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PurchasesState.itemsReady'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('trialEnabled', trialEnabled))
      ..add(DiagnosticsProperty('oneTimeOffers', oneTimeOffers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsReady &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.trialEnabled, trialEnabled) ||
                other.trialEnabled == trialEnabled) &&
            (identical(other.oneTimeOffers, oneTimeOffers) ||
                other.oneTimeOffers == oneTimeOffers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      selectedIndex,
      trialEnabled,
      oneTimeOffers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsReadyCopyWith<_$ItemsReady> get copyWith =>
      __$$ItemsReadyCopyWithImpl<_$ItemsReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return itemsReady(items, selectedIndex, trialEnabled, oneTimeOffers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return itemsReady?.call(items, selectedIndex, trialEnabled, oneTimeOffers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (itemsReady != null) {
      return itemsReady(items, selectedIndex, trialEnabled, oneTimeOffers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return itemsReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return itemsReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (itemsReady != null) {
      return itemsReady(this);
    }
    return orElse();
  }
}

abstract class ItemsReady implements PurchasesState {
  const factory ItemsReady(
      final List<SubscriptionPackage> items, final int selectedIndex,
      {final bool trialEnabled,
      final OneTimeOffers? oneTimeOffers}) = _$ItemsReady;

  List<SubscriptionPackage> get items;
  int get selectedIndex;
  bool get trialEnabled;
  OneTimeOffers? get oneTimeOffers;
  @JsonKey(ignore: true)
  _$$ItemsReadyCopyWith<_$ItemsReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchFailureCopyWith<$Res> {
  factory _$$_FetchFailureCopyWith(
          _$_FetchFailure value, $Res Function(_$_FetchFailure) then) =
      __$$_FetchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchFailureCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_FetchFailure>
    implements _$$_FetchFailureCopyWith<$Res> {
  __$$_FetchFailureCopyWithImpl(
      _$_FetchFailure _value, $Res Function(_$_FetchFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchFailure with DiagnosticableTreeMixin implements _FetchFailure {
  const _$_FetchFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.fetchFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PurchasesState.fetchFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return fetchFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return fetchFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return fetchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchFailure implements PurchasesState {
  const factory _FetchFailure() = _$_FetchFailure;
}

/// @nodoc
abstract class _$$_PurchaseFailureCopyWith<$Res> {
  factory _$$_PurchaseFailureCopyWith(
          _$_PurchaseFailure value, $Res Function(_$_PurchaseFailure) then) =
      __$$_PurchaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PurchaseFailureCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_PurchaseFailure>
    implements _$$_PurchaseFailureCopyWith<$Res> {
  __$$_PurchaseFailureCopyWithImpl(
      _$_PurchaseFailure _value, $Res Function(_$_PurchaseFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PurchaseFailure
    with DiagnosticableTreeMixin
    implements _PurchaseFailure {
  const _$_PurchaseFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.purchaseFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PurchasesState.purchaseFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PurchaseFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return purchaseFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return purchaseFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (purchaseFailure != null) {
      return purchaseFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return purchaseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return purchaseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (purchaseFailure != null) {
      return purchaseFailure(this);
    }
    return orElse();
  }
}

abstract class _PurchaseFailure implements PurchasesState {
  const factory _PurchaseFailure() = _$_PurchaseFailure;
}

/// @nodoc
abstract class _$$_RestoreFailureCopyWith<$Res> {
  factory _$$_RestoreFailureCopyWith(
          _$_RestoreFailure value, $Res Function(_$_RestoreFailure) then) =
      __$$_RestoreFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RestoreFailureCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$_RestoreFailure>
    implements _$$_RestoreFailureCopyWith<$Res> {
  __$$_RestoreFailureCopyWithImpl(
      _$_RestoreFailure _value, $Res Function(_$_RestoreFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RestoreFailure
    with DiagnosticableTreeMixin
    implements _RestoreFailure {
  const _$_RestoreFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.restoreFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PurchasesState.restoreFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RestoreFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return restoreFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return restoreFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (restoreFailure != null) {
      return restoreFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return restoreFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return restoreFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (restoreFailure != null) {
      return restoreFailure(this);
    }
    return orElse();
  }
}

abstract class _RestoreFailure implements PurchasesState {
  const factory _RestoreFailure() = _$_RestoreFailure;
}

/// @nodoc
abstract class _$$AlreadyPremiumCopyWith<$Res> {
  factory _$$AlreadyPremiumCopyWith(
          _$AlreadyPremium value, $Res Function(_$AlreadyPremium) then) =
      __$$AlreadyPremiumCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyPremiumCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$AlreadyPremium>
    implements _$$AlreadyPremiumCopyWith<$Res> {
  __$$AlreadyPremiumCopyWithImpl(
      _$AlreadyPremium _value, $Res Function(_$AlreadyPremium) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlreadyPremium with DiagnosticableTreeMixin implements AlreadyPremium {
  const _$AlreadyPremium();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.alreadyPremium()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PurchasesState.alreadyPremium'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlreadyPremium);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return alreadyPremium();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return alreadyPremium?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (alreadyPremium != null) {
      return alreadyPremium();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return alreadyPremium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return alreadyPremium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (alreadyPremium != null) {
      return alreadyPremium(this);
    }
    return orElse();
  }
}

abstract class AlreadyPremium implements PurchasesState {
  const factory AlreadyPremium() = _$AlreadyPremium;
}

/// @nodoc
abstract class _$$ConfirmedByUserCopyWith<$Res> {
  factory _$$ConfirmedByUserCopyWith(
          _$ConfirmedByUser value, $Res Function(_$ConfirmedByUser) then) =
      __$$ConfirmedByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmedByUserCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$ConfirmedByUser>
    implements _$$ConfirmedByUserCopyWith<$Res> {
  __$$ConfirmedByUserCopyWithImpl(
      _$ConfirmedByUser _value, $Res Function(_$ConfirmedByUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmedByUser
    with DiagnosticableTreeMixin
    implements ConfirmedByUser {
  const _$ConfirmedByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PurchasesState.purchaseSuccessConfirmed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PurchasesState.purchaseSuccessConfirmed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmedByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() fetchLoading,
    required TResult Function() waitingToRestore,
    required TResult Function() waitingToPurchase,
    required TResult Function(SubscriptionPackage package) purchased,
    required TResult Function() restored,
    required TResult Function(List<SubscriptionPackage> items,
            int selectedIndex, bool trialEnabled, OneTimeOffers? oneTimeOffers)
        itemsReady,
    required TResult Function() fetchFailure,
    required TResult Function() purchaseFailure,
    required TResult Function() restoreFailure,
    required TResult Function() alreadyPremium,
    required TResult Function() purchaseSuccessConfirmed,
  }) {
    return purchaseSuccessConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? fetchLoading,
    TResult? Function()? waitingToRestore,
    TResult? Function()? waitingToPurchase,
    TResult? Function(SubscriptionPackage package)? purchased,
    TResult? Function()? restored,
    TResult? Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult? Function()? fetchFailure,
    TResult? Function()? purchaseFailure,
    TResult? Function()? restoreFailure,
    TResult? Function()? alreadyPremium,
    TResult? Function()? purchaseSuccessConfirmed,
  }) {
    return purchaseSuccessConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? fetchLoading,
    TResult Function()? waitingToRestore,
    TResult Function()? waitingToPurchase,
    TResult Function(SubscriptionPackage package)? purchased,
    TResult Function()? restored,
    TResult Function(List<SubscriptionPackage> items, int selectedIndex,
            bool trialEnabled, OneTimeOffers? oneTimeOffers)?
        itemsReady,
    TResult Function()? fetchFailure,
    TResult Function()? purchaseFailure,
    TResult Function()? restoreFailure,
    TResult Function()? alreadyPremium,
    TResult Function()? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (purchaseSuccessConfirmed != null) {
      return purchaseSuccessConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchLoding value) fetchLoading,
    required TResult Function(_WaitingToRestore value) waitingToRestore,
    required TResult Function(_WaitingToPurchase value) waitingToPurchase,
    required TResult Function(Purchased value) purchased,
    required TResult Function(Restored value) restored,
    required TResult Function(ItemsReady value) itemsReady,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_PurchaseFailure value) purchaseFailure,
    required TResult Function(_RestoreFailure value) restoreFailure,
    required TResult Function(AlreadyPremium value) alreadyPremium,
    required TResult Function(ConfirmedByUser value) purchaseSuccessConfirmed,
  }) {
    return purchaseSuccessConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FetchLoding value)? fetchLoading,
    TResult? Function(_WaitingToRestore value)? waitingToRestore,
    TResult? Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult? Function(Purchased value)? purchased,
    TResult? Function(Restored value)? restored,
    TResult? Function(ItemsReady value)? itemsReady,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_PurchaseFailure value)? purchaseFailure,
    TResult? Function(_RestoreFailure value)? restoreFailure,
    TResult? Function(AlreadyPremium value)? alreadyPremium,
    TResult? Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
  }) {
    return purchaseSuccessConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchLoding value)? fetchLoading,
    TResult Function(_WaitingToRestore value)? waitingToRestore,
    TResult Function(_WaitingToPurchase value)? waitingToPurchase,
    TResult Function(Purchased value)? purchased,
    TResult Function(Restored value)? restored,
    TResult Function(ItemsReady value)? itemsReady,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_PurchaseFailure value)? purchaseFailure,
    TResult Function(_RestoreFailure value)? restoreFailure,
    TResult Function(AlreadyPremium value)? alreadyPremium,
    TResult Function(ConfirmedByUser value)? purchaseSuccessConfirmed,
    required TResult orElse(),
  }) {
    if (purchaseSuccessConfirmed != null) {
      return purchaseSuccessConfirmed(this);
    }
    return orElse();
  }
}

abstract class ConfirmedByUser implements PurchasesState {
  const factory ConfirmedByUser() = _$ConfirmedByUser;
}
