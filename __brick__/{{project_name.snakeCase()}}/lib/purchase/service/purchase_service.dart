import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/one_time_offers.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';

/// [PurchaseService] is responsible for managing all purchase related operations.
/// It provides methods to initialize the platform, get customer info, purchase packages,
/// get offerings, check premium status, restore purchases, update subscription status,
/// refresh on launch, check eligibility for introductory price and offer, login, and get special offers.
abstract class PurchaseService {
  static const entitlement = 'pro';

  /// Initializes the platform for purchases.
  Future<void> initPlatform();

  /// Returns the [CustomerInfo] for the current user.
  Future<CustomerInfo> getCustomerInfo();

  /// Returns a stream of [CustomerInfo] for the current user.
  Stream<CustomerInfo> get infoStream;

  /// Allows the user to purchase a [Package].
  Future<CustomerInfo> purchasePackage(Package package);

  /// Returns a list of [SubscriptionPackage] available for purchase.
  Future<List<SubscriptionPackage>> getOfferings();

  /// Checks if the user is a premium user.
  /// Optionally, [CustomerInfo] can be provided. If not, it fetches the [CustomerInfo] internally.
  Future<bool> isPremium({CustomerInfo? customerInfo});

  /// Restores the user's purchases.
  Future<bool> restorePurchases();

  /// Checks if the user is eligible for an introductory price.
  Future<bool> isEligibleForIntroductoryPrice();

  /// Checks if the user is eligible for an introductory offer for a specific [Package].
  Future<bool> isEligibleForIntroductoryOffer(Package package);

  /// Logs in the user with the provided [uid].
  Future<LogInResult> login({required String uid});

  /// Returns a special offer for the user, if available.
  Future<OneTimeOffers?> getSpecialOffer();
}

/// Extension on [PeriodUnit] to get the number of days for each unit.
extension PeriodUnitX on PeriodUnit {
  int get day {
    switch (this) {
      case PeriodUnit.day:
        return 1;
      case PeriodUnit.week:
        return 7;
      case PeriodUnit.month:
        return 30;
      case PeriodUnit.year:
        return 365;
      case PeriodUnit.unknown:
        return 0;
    }
  }
}

/// Extension on [CustomerInfo] to check if the user is a premium user.
extension CustomerInfoX on CustomerInfo {
  bool get isPremium =>
      entitlements.all[PurchaseService.entitlement]?.isActive ?? false;
}
