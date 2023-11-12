/// File: purchase_service_impl.dart
/// Project: {{project_name.snakeCase()}}
/// Author: [Author Name]
/// Created Date: [Date]
/// Description: This file implements the PurchaseService interface, providing methods for managing purchase related operations.
library;

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:{{project_name.snakeCase()}}/env/env.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/one_time_offers.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';
import 'package:{{project_name.snakeCase()}}/purchase/service/purchase_service.dart';

/// Singleton class implementing PurchaseService.
/// Provides methods for initializing the platform, getting customer info, purchasing packages,
/// getting offerings, checking premium status, restoring purchases, updating subscription status, etc.
@preResolve
@Singleton(as: PurchaseService)
class PurchaseServiceImpl implements PurchaseService {
  /// Stream of CustomerInfo objects.
  final _infoStream = BehaviorSubject<CustomerInfo>();

  /// Singleton instance of PurchaseService.
  static PurchaseService? _instance;

  /// Factory method to create a singleton instance of PurchaseService.
  /// Initializes the platform if not a web platform.
  @factoryMethod
  static Future<PurchaseService> create() async {
    if (_instance == null) {
      _instance = PurchaseServiceImpl();
      if (!kIsWeb) {
        await _instance!.initPlatform();
      }
    }
    return _instance!;
  }

  /// Initializes the platform for purchases.
  /// Sets the log level, configures the purchases, and adds listeners.
  @override
  Future<void> initPlatform() async {
    if (kDebugMode) {
      await Purchases.setLogLevel(LogLevel.debug);
    }

    final configuration = PurchasesConfiguration(
      Platform.isAndroid ? Env.revenueCatPlayStore : Env.revenueCatAppStore,
    )..usesStoreKit2IfAvailable = Platform.isIOS;

    await Purchases.configure(configuration);

    Purchases.addReadyForPromotedProductPurchaseListener(
      handlePromotedProductPurchase,
    );

    await isEligibleForIntroductoryPrice();
    Purchases.addCustomerInfoUpdateListener(_infoStream.add);
  }

  /// Fetches the customer info.
  @override
  Future<CustomerInfo> getCustomerInfo() {
    return Purchases.getCustomerInfo();
  }

  /// Fetches the offerings from the store and checks if the user is eligible for an introductory price.
  /// Returns a list of SubscriptionPackage objects.
  @override
  Future<List<SubscriptionPackage>> getOfferings() async {
    // Fetch the current offerings from the store
    final offerings = await Purchases.getOfferings();
    final offering = offerings.current!;
    final metadata = offering.metadata;

    // Fetch the customer info
    final info = await Purchases.getCustomerInfo();

    // Get the list of available packages
    final availablePackages = offering.availablePackages;

    // Check the eligibility for introductory price for each package
    final eligibilities = await Future.wait(
      availablePackages
          .map((e) => e.storeProduct.identifier)
          .map((e) => Purchases.checkTrialOrIntroductoryPriceEligibility([e]))
          .toList(),
    );

    // Map the available packages to SubscriptionPackage objects
    // and check if the user is eligible for an introductory offer
    return availablePackages.map(
      (e) {
        final isEligible = eligibilities.any(
          (element) =>
              element.keys.first == e.storeProduct.identifier &&
              element.values.first.status ==
                  IntroEligibilityStatus.introEligibilityStatusEligible,
        );
        return SubscriptionPackage(
          metadata,
          package: e,
          // If the platform is Android, check if the user has any active entitlements
          // If not, the user is eligible for an introductory offer
          // If the platform is not Android, use the eligibility status fetched earlier
          isIntroductoryOfferEligible:
              Platform.isAndroid ? info.entitlements.all.isEmpty : isEligible,
        );
      },
    ).toList();
  }

  /// Checks if the user is eligible for an introductory price.
  @override
  Future<bool> isEligibleForIntroductoryPrice() async {
    final offerings = await getOfferings();
    return offerings.any((element) => element.isIntroductoryOfferEligible);
  }

  /// Checks if the user is a premium user.
  @override
  Future<bool> isPremium({CustomerInfo? customerInfo}) async {
    if (kIsWeb) {
      return false;
    }
    try {
      if (customerInfo != null) {
        return customerInfo
                .entitlements.all[PurchaseService.entitlement]?.isActive ??
            false;
      } else {
        final info = await Purchases.getCustomerInfo();
        return info.entitlements.all[PurchaseService.entitlement]?.isActive ??
            false;
      }
    } catch (e) {
      return false;
    }
  }

  /// Purchases a package and updates the subscription status.
  @override
  Future<CustomerInfo> purchasePackage(Package package) async {
    try {
      return await Purchases.purchasePackage(package);
    } catch (e) {
      rethrow;
    }
  }

  /// Restores the user's purchases.
  @override
  Future<bool> restorePurchases() async {
    final restoredInfo = await Purchases.restorePurchases();
    return restoredInfo.isPremium;
  }

  /// Checks if the user is eligible for an introductory offer.
  @override
  Future<bool> isEligibleForIntroductoryOffer(Package package) async {
    return true;
  }

  /// Returns a stream of CustomerInfo objects.
  @override
  Stream<CustomerInfo> get infoStream => _infoStream.stream;

  /// Logs in the user with the provided uid.
  @override
  Future<LogInResult> login({required String uid}) async {
    return Purchases.logIn(uid);
  }

  /// Fetches the special offer for the user.
  @override
  Future<OneTimeOffers?> getSpecialOffer() async {
    final offerings = await Purchases.getOfferings();
    final offering = offerings.all[PurchaseServiceImpl.discountedOffering];
    if (offering == null) return null;
    final discountedPackage = offering.getPackage(annualDiscounted);
    final specialPackage = offering.getPackage(identifier1UsdFirstMonth);
    final metadata = offering.metadata;

    final eligibilities = await Future.wait(
      [
        if (discountedPackage != null) discountedPackage,
        if (specialPackage != null) specialPackage,
      ]
          .map((e) => e.storeProduct.identifier)
          .map((e) => Purchases.checkTrialOrIntroductoryPriceEligibility([e]))
          .toList(),
    );

    bool isEligible(String identifier) {
      if (eligibilities.isEmpty) return false;
      final list = eligibilities
          .where(
            (element) => element.keys.first == identifier,
          )
          .toList();
      return list.isNotEmpty &&
          list.first.values.first.status ==
              IntroEligibilityStatus.introEligibilityStatusEligible;
    }

    return OneTimeOffers(
      specialOffer: specialPackage == null ||
              !isEligible(specialPackage.storeProduct.identifier)
          ? null
          : SubscriptionPackage(
              metadata,
              package: specialPackage,
              isIntroductoryOfferEligible: false,
            ),
      discountedOffer: discountedPackage == null
          ? null
          : SubscriptionPackage(
              metadata,
              package: discountedPackage,
              isIntroductoryOfferEligible: false,
            ),
    );
  }

  Future<void> handlePromotedProductPurchase(
    String productID,
    Future<PromotedPurchaseResult> Function() startPurchase,
  ) async {
    if (kDebugMode) {
      print(
          'Received readyForPromotedProductPurchase event for productID: $productID');
    }

    try {
      final purchaseResult = await startPurchase.call();
      if (kDebugMode) {
        print(
            'Promoted purchase for productID ${purchaseResult.productIdentifier} completed, or product was already purchased. purchaserInfo returned is: ${purchaseResult.customerInfo}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error purchasing promoted product: ${e.toString()}');
      }
    }
  }

  static const discountedOffering = 'discounted';
  static const identifier1UsdFirstMonth = 'Annual_first_month_discount';
  static const annualDiscounted = r'$rc_annual';
}
