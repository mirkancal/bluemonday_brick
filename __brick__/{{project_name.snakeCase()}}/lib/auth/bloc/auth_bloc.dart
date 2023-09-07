import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../injectable.dart';
import '../repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repository, this._auth) : super(const _Initial()) {
    if (!Platform.isIOS) {
      _repository.isUserSignedIn().then((value) async {
        if (value != null) {
          // add(const _LogOut());

          add(_Authenticate(user: value));
        } else {
          add(const _LogOut());
        }
      });
    }
    if (Platform.isIOS) {
      userSubscription = _auth.authStateChanges().listen((value) async {
        if (kDebugMode) {
          print('AUTH STATE CHANGED: $value');
        }
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
          //@TODO
          // unawaited(
          //   getIt<IAnalyticsService>().login(
          //     uid: event.user.uid,
          //     email: event.user.email,
          //   ),
          // );
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
