// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i5;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'analytics/service/analytics_service.dart' as _i15;
import 'auth/bloc/auth_bloc.dart' as _i18;
import 'auth/repository/auth_repository.dart' as _i16;
import 'auth/repository/auth_repository_impl.dart' as _i17;
import 'firebase/firebase_injectable_module.dart' as _i20;
import 'login/bloc/login_bloc.dart' as _i19;
import 'notification/service/notification_service.dart' as _i8;
import 'purchase/bloc/purchases_bloc.dart' as _i11;
import 'purchase/service/purchase_service.dart' as _i9;
import 'purchase/service/purchase_service_impl.dart' as _i10;
import 'remote_config/service/remote_config_service.dart' as _i12;
import 'router/router.dart' as _i14;
import 'version/service/version_service.dart' as _i13;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAnalytics>(
      () => firebaseInjectableModule.analytics);
  gh.lazySingleton<_i4.FirebaseAuth>(() => firebaseInjectableModule.auth);
  gh.lazySingleton<_i5.FirebaseCrashlytics>(
      () => firebaseInjectableModule.crashlytics);
  gh.lazySingleton<_i6.FirebaseMessaging>(
      () => firebaseInjectableModule.messaging);
  gh.lazySingleton<_i7.FirebaseRemoteConfig>(
      () => firebaseInjectableModule.remoteConfig);
  gh.singleton<_i8.NotificationService>(
      _i8.NotificationServiceImpl(gh<_i6.FirebaseMessaging>()));
  await gh.singletonAsync<_i9.PurchaseService>(
    () => _i10.PurchaseServiceImpl.create(),
    preResolve: true,
  );
  gh.singleton<_i11.PurchasesBloc>(
      _i11.PurchasesBloc(gh<_i9.PurchaseService>()));
  await gh.singletonAsync<_i12.RemoteConfigService>(
    () => _i12.RemoteConfigServiceImpl.create(),
    preResolve: true,
  );
  gh.singleton<_i13.VersionService>(
      _i13.VersionServiceImpl(gh<_i12.RemoteConfigService>()));
  gh.lazySingleton<_i14.AnalyticsObserver>(
      () => _i14.AnalyticsObserver(gh<_i3.FirebaseAnalytics>()));
  gh.lazySingleton<_i15.AnalyticsService>(
      () => _i15.AnalyticsServiceImpl(gh<_i3.FirebaseAnalytics>()));
  gh.lazySingleton<_i16.AuthRepository>(
      () => _i17.AuthRepositoryImpl(gh<_i4.FirebaseAuth>()));
  gh.singleton<_i18.AuthBloc>(_i18.AuthBloc(
    gh<_i16.AuthRepository>(),
    gh<_i4.FirebaseAuth>(),
  ));
  gh.singleton<_i19.LoginBloc>(_i19.LoginBloc(
    gh<_i16.AuthRepository>(),
    gh<_i18.AuthBloc>(),
  ));
  return getIt;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
