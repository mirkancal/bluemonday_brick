import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:{{project_name.snakeCase()}}/auth/bloc/auth_bloc.dart';
import 'package:{{project_name.snakeCase()}}/home/view/home_page.dart';
import 'package:{{project_name.snakeCase()}}/injectable.dart';
import 'package:{{project_name.snakeCase()}}/onboarding/view/onboarding_page.dart';
import 'package:{{project_name.snakeCase()}}/onboarding/view/splash.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: ''.toRoute,
      name: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: OnboardingPage.routeName.toRoute,
      name: OnboardingPage.routeName,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: SplashPage.routeName.toRoute,
      name: SplashPage.routeName,
      builder: (context, state) => const SplashPage(),
    ),
  ],
  refreshListenable: GoRouterRefreshStream(
    Rx.merge<dynamic>(
      [
        getIt<AuthBloc>().stream,
        // getIt<PurchasesBloc>().stream,
      ],
    ),
  ),
  redirect: (context, state) {
    final authState = getIt<AuthBloc>().state;
    final isAuthenticated = authState is Authenticated;
    // final purchaseState = getIt<PurchasesBloc>().state;
    // final isPremium = getIt<PurchasesBloc>().isPremium;
    // final isOfferingReady = purchaseState is ItemsReady;
    // final purchaseConfirmed = purchaseState is ConfirmedByUser;
    // final hasOnboarded =
    //     getIt<DatabaseService>().getSetting(Settings.onboarded.name);
    final hasOnboarded = false;

    final atHome = state.matchedLocation == '/';
    // final atPurchasePages = state.matchedLocation == PaywallPage.name.toRoute;
    final atOnboarding = state.matchedLocation == '/onboarding';
    if (!isAuthenticated) {
      return atOnboarding
          ? null
          : hasOnboarded
              ? SplashPage.routeName.toRoute
              : OnboardingPage.routeName.toRoute;
    } else {
      return atOnboarding ? HomePage.routeName.toRoute : null;
    }
  },
  observers: [
    getIt<AnalyticsObserver>(),
  ],
);

@lazySingleton
class AnalyticsObserver extends NavigatorObserver {
  AnalyticsObserver(this.analytics);
  final FirebaseAnalytics analytics;
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      analytics.setCurrentScreen(screenName: route.str);

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      analytics.setCurrentScreen(screenName: route.str);

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      analytics.setCurrentScreen(screenName: route.str);

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) =>
      analytics.setCurrentScreen(screenName: newRoute?.str);

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) =>
      analytics.setCurrentScreen(screenName: route.str);
}

extension on Route<dynamic> {
  String get str => 'route(${settings.name}: ${settings.arguments})';
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

extension X on String {
  String get toRoute => this == 'home' ? '/' : '/$this';
}
