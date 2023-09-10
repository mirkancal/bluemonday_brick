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

import 'analytics/service/analytics_service.dart' as _i12;
import 'auth/bloc/auth_bloc.dart' as _i15;
import 'auth/repository/auth_repository.dart' as _i13;
import 'auth/repository/auth_repository_impl.dart' as _i14;
import 'firebase/firebase_injectable_module.dart' as _i17;
import 'login/bloc/login_bloc.dart' as _i16;
import 'notification/service/notification_service.dart' as _i8;
import 'remote_config/service/remote_config_service.dart' as _i9;
import 'router/router.dart' as _i11;
import 'version/service/version_service.dart' as _i10;

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
  await gh.singletonAsync<_i9.RemoteConfigService>(
    () => _i9.RemoteConfigServiceImpl.create(),
    preResolve: true,
  );
  gh.singleton<_i10.VersionService>(
      _i10.VersionServiceImpl(gh<_i9.RemoteConfigService>()));
  gh.lazySingleton<_i11.AnalyticsObserver>(
      () => _i11.AnalyticsObserver(gh<_i3.FirebaseAnalytics>()));
  gh.lazySingleton<_i12.AnalyticsService>(
      () => _i12.AnalyticsServiceImpl(gh<_i3.FirebaseAnalytics>()));
  gh.lazySingleton<_i13.AuthRepository>(
      () => _i14.AuthRepositoryImpl(gh<_i4.FirebaseAuth>()));
  gh.singleton<_i15.AuthBloc>(_i15.AuthBloc(
    gh<_i13.AuthRepository>(),
    gh<_i4.FirebaseAuth>(),
  ));
  gh.singleton<_i16.LoginBloc>(_i16.LoginBloc(
    gh<_i13.AuthRepository>(),
    gh<_i15.AuthBloc>(),
  ));
  return getIt;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
