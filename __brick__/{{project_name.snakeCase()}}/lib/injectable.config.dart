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
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'analytics/service/analytics_service.dart' as _i8;
import 'auth/bloc/auth_bloc.dart' as _i11;
import 'auth/repository/auth_repository.dart' as _i9;
import 'auth/repository/auth_repository_impl.dart' as _i10;
import 'firebase/firebase_injectable_module.dart' as _i13;
import 'login/bloc/login_bloc.dart' as _i12;
import 'router/router.dart' as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
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
  gh.lazySingleton<_i6.FirebaseRemoteConfig>(
      () => firebaseInjectableModule.remoteConfig);
  gh.lazySingleton<_i7.AnalyticsObserver>(
      () => _i7.AnalyticsObserver(gh<_i3.FirebaseAnalytics>()));
  gh.lazySingleton<_i8.AnalyticsService>(
      () => _i8.AnalyticsServiceImpl(gh<_i3.FirebaseAnalytics>()));
  gh.lazySingleton<_i9.AuthRepository>(
      () => _i10.AuthRepositoryImpl(gh<_i4.FirebaseAuth>()));
  gh.singleton<_i11.AuthBloc>(_i11.AuthBloc(
    gh<_i9.AuthRepository>(),
    gh<_i4.FirebaseAuth>(),
  ));
  gh.singleton<_i12.LoginBloc>(_i12.LoginBloc(
    gh<_i9.AuthRepository>(),
    gh<_i11.AuthBloc>(),
  ));
  return getIt;
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
