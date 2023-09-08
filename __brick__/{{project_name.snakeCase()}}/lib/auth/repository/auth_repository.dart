import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:unique_string/auth/models/auth_failure.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, User>> signInAnonymously();

  Future<Either<AuthFailure, bool>> signOut();
  Future<User?> isUserSignedIn();

  Future<Either<AuthFailure, bool>> deleteAccount();

  static AuthFailure handleException(FirebaseAuthException e) {
    if (e.code == 'user-not-found') {
      return const AuthFailure.withMessage('No user found for that email.');
    }
    if (e.code == 'wrong-password') {
      return const AuthFailure.withMessage(
        'Wrong password provided for that user.',
      );
    }
    if (e.code == 'email-already-in-use') {
      return const AuthFailure.withMessage(
        'This email is already in use.',
      );
    }
    return const AuthFailure.unexpected('Unexpected errror');
  }
}
