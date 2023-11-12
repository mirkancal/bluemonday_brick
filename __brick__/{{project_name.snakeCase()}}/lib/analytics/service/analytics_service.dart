import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class AnalyticsService {
  Future<void> login({
    required String uid,
    String? provider,
    String? email,
  });
  Future<void> askATT();
}

@LazySingleton(as: AnalyticsService)
class AnalyticsServiceImpl extends AnalyticsService {
  AnalyticsServiceImpl(
    this._firebaseAnalytics,
  );
  final FirebaseAnalytics _firebaseAnalytics;

  /// Asks for App Tracking Transparency (ATT) permission from the user.
  /// This method requests the user's permission to track them or access their device's advertising identifier.
  /// Depending on the user's response, it performs different actions.
  @override
  Future<void> askATT() async {
    final status = await Permission.appTrackingTransparency.request();
    // await _appsflyerSdk.getAppsFlyerUID().then((value) {
    //   if (value != null) {
    //     Purchases.setAppsflyerID(value);
    //   }
    // });
    if (status.isGranted) {
      // Perform action when permission is granted
      // await _facebookAppEvents.setAdvertiserTracking(enabled: true);
      await _firebaseAnalytics.logEvent(name: 'att_granted');
      //@TODO
      // await Purchases.collectDeviceIdentifiers();
    } else if (status.isDenied) {
      // Perform action when permission is denied
      // await _facebookAppEvents.setAdvertiserTracking(enabled: false);
    } else if (status.isPermanentlyDenied) {
      // Handle the permanently denied case
      // await _facebookAppEvents.setAdvertiserTracking(enabled: false);
    }
  }

  @override
  Future<void> login({
    required String uid,
    String? provider,
    String? email,
  }) async {
    try {
      // _appsflyerSdk.setCustomerUserId(uid);
      // unawaited(_facebookAppEvents.setUserID(uid));
      await _firebaseAnalytics.setUserId(id: uid);

      if (email != null) {
        // _appsflyerSdk.setUserEmails([email]);
        // _facebookAppEvents.setUserData(email: email);
        await _firebaseAnalytics.setUserProperty(name: 'email', value: email);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> logEvent(String name, Map<String, dynamic> parameters) async {
    try {
      await Future.wait([
        _firebaseAnalytics.logEvent(name: name, parameters: parameters),
        // _facebookAppEvents.logEvent(name: name, parameters: parameters),
        // _appsflyerSdk.logEvent(name, parameters),
      ]);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
