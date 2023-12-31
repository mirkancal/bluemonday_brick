import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/analytics/service/analytics_service.dart';
import 'package:{{project_name.snakeCase()}}/auth/repository/auth_repository.dart';
import 'package:{{project_name.snakeCase()}}/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repository, this._auth) : super(const _Initial()) {
    userSubscription = _auth
        .authStateChanges()
        .distinct((p, n) => p?.uid == n?.uid)
        .listen(_onAuthStateChanged);

    on<_Authenticate>((event, emit) async {
      try {
        if (!kIsWeb) {
          unawaited(
            getIt<AnalyticsService>().login(
              uid: event.user.uid,
              email: event.user.email,
            ),
          );
          //@TODO
          // await getIt<IPurchasesService>().login(uid: event.user.uid);
        }
        _login(event.user.uid);
        emit(Authenticated(user: event.user));
      } catch (e) {
        emit(const Unauthenticated());
      }
    });
    on<_LogOut>((event, emit) {
      _repository.signOut();
      emit(const Unauthenticated());
      // getIt<DatabaseService>().setSetting(Settings.onboarded.name, isOn: false);
    });
  }

  void _onAuthStateChanged(User? user) {
    if (kDebugMode) {
      print('AUTH STATE CHANGED: $user');
    }
    if (user != null) {
      add(_Authenticate(user: user));
    } else {
      add(const _LogOut());
    }
  }

  @override
  Future<void> close() {
    userSubscription?.cancel();
    return super.close();
  }

  StreamSubscription<User?>? userSubscription;

  final AuthRepository _repository;
  final FirebaseAuth _auth;

  void _login(String uid) {
    //@TODO Do other logins here
    getIt<FirebaseCrashlytics>().setUserIdentifier(uid);
  }
}
