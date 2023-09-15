// Importing necessary packages and modules
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/price_explanation.dart';
import 'package:{{project_name.snakeCase()}}/purchase/service/purchase_service.dart';

// SubscriptionPackage class is responsible for handling the details of a subscription package
// Attributes:
// - package: Contains the details of the package
// - isIntroductoryOfferEligible: A boolean value indicating whether the package is eligible for introductory offer or not
class SubscriptionPackage {
  SubscriptionPackage({
    required this.package,
    required this.isIntroductoryOfferEligible,
  });

  final Package package;
  final bool isIntroductoryOfferEligible;

  // Returns the identifier of the package
  String get identifier => package.identifier;

  // Computes the trial expiration date based on the introductory price period
  // Returns null if there is no introductory price
  DateTime? get trialExpirationDate {
    final introductoryPrice = package.storeProduct.introductoryPrice;
    if (introductoryPrice == null) {
      return null;
    }
    final unitInDays = introductoryPrice.periodNumberOfUnits *
        introductoryPrice.periodUnit.day;
    return DateTime.now().add(Duration(days: unitInDays));
  }

  // Computes the price explanation based on the package type
  // Returns a PriceExplanation object with the details of the price
  // Usually annual has trial days, also breaking down how much it costs monthly
  PriceExplanation get priceExplanation {
    if (package.packageType == PackageType.annual) {
      final yearlyPriceString = package.storeProduct.priceString;
      final monthlyPrice = (package.storeProduct.price / 12).toStringAsFixed(2);
      final monthlyExplanation =
          '$monthlyPrice${package.storeProduct.currencyCode}';
      final introductoryPrice = package.storeProduct.introductoryPrice;
      var trialDays = 0;
      if (introductoryPrice != null) {
        trialDays = introductoryPrice.periodNumberOfUnits *
            introductoryPrice.periodUnit.day;
      }

      return PriceExplanation(
        trialDays,
        yearlyPriceString,
        monthlyExplanation,
      );
    }

    // Returns a default PriceExplanation object if the package type is not annual
    return PriceExplanation(0, '', '');
  }
}
