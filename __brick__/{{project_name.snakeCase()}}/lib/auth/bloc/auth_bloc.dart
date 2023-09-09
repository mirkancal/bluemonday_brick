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
    /// I had a weird bug long time on Android Emulators,
    /// where [authStateChanges] yields thousands of events in second.
    /// That's why I'm using it only on iOS
    if (!Platform.isIOS) {
      _repository.isUserSignedIn().then((value) async {
        if (value != null) {
          add(_Authenticate(user: value));
        } else {
          add(const _LogOut());
        }
      });
    }
    if (Platform.isIOS) {
      userSubscription = _auth.authStateChanges().listen((value) async {
        if (value != null) {
          add(_Authenticate(user: value));
        } else {
          add(const _LogOut());
        }
      });
    }

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
