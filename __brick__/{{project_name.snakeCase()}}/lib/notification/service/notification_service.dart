import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class NotificationService {
  Future<bool> requestPermission();
  Future<bool> getPermission();
  Future<String?> getToken();
}

//@TODO
const _vapidKey =
    'BHN_DmXBzAc9yYG-uleBjTDWaUWi8JlTSnwMD4NOFYR5P6GK8PTcuiwncG8iVj0qNyviMQI3mWqiwiQqcIGU4UU';

@Singleton(as: NotificationService)
class NotificationServiceImpl implements NotificationService {
  NotificationServiceImpl(this.messaging);

  @override
  Future<bool> getPermission() async {
    if (kIsWeb) {
      return false;
    }
    try {
      final permission = await Permission.notification.status;
      final result = permission == PermissionStatus.granted;
      unawaited(
        getToken().then(
          (value) {
            if (value != null) {
              if (kDebugMode) {
                print('FCM Token: $value');
              }
              //@TODO
              // Purchases.setPushToken(value);
            }
          },
        ),
      );

      return result;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String?> getToken() async {
    try {
      final token = messaging.getToken(
        vapidKey: _vapidKey,
      );
      return token;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return Future.value();
    }
  }

  @override
  Future<bool> requestPermission({bool appSettings = false}) async {
    final settings = await messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      return true;
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      return true;
    } else {
      if (!kIsWeb && appSettings) {
        await openAppSettings();
      }
      return false;
    }
  }

  final FirebaseMessaging messaging;
}
