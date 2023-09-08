import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:{{project_name.snakeCase()}}/auth/models/auth_failure.dart';
import 'package:{{project_name.snakeCase()}}/auth/repository/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(
    this._firebaseAuth,
  );

  final FirebaseAuth _firebaseAuth;

  @override
  Future<User?> isUserSignedIn() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      await _firebaseAuth.signOut();
      return firebaseUser;
    } else {
      return null;
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInAnonymously() async {
    try {
      final credentials = await _firebaseAuth.signInAnonymously();
      // Needs to use firestore
      return Right(credentials.user!);
    } on FirebaseAuthException catch (e) {
      return Left(AuthRepository.handleException(e));
    }
  }

  @override
  Future<Either<AuthFailure, bool>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const Right(true);
    } catch (e) {
      return const Left(AuthFailure.unexpected(''));
    }
  }

  static AuthFailure _handleException(FirebaseAuthException e) {
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

  @override
  Future<Either<AuthFailure, bool>> deleteAccount() async {
    try {
      await _firebaseAuth.currentUser?.delete();
      return const Right(true);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return const Left(AuthFailure.unexpected(''));
    }
  }
}
