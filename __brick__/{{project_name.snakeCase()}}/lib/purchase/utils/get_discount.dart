import 'package:collection/collection.dart';
import 'package:currency_symbols/currency_symbols.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';

/// Calculates the discount percentage for a given [SubscriptionPackage] compared to other packages.
///
/// Parameters:
/// - `items`: List of all available subscription packages.
/// - `current`: The subscription package for which the discount is to be calculated.
///
/// Returns: The discount percentage for a given subscription package compared to other packages.
/// It first checks if the package type is weekly, monthly, or six-month. If it is, it returns null as these types don't have discounts.
/// It then finds the first package that is either weekly, monthly, or six-month and calculates the yearly price for it.
/// The discount percentage is then calculated based on this yearly price and the price of the current package.
int? getDiscount(
  List<SubscriptionPackage> items,
  SubscriptionPackage current,
) {
  final type = current.package.packageType;
  if (type == PackageType.weekly ||
      type == PackageType.monthly ||
      type == PackageType.sixMonth) {
    return null;
  }
  final weeklyOrMonthlyOrSemiAnnual =
      items.cast<SubscriptionPackage?>().firstWhereOrNull(
            (element) =>
                element?.package.packageType == PackageType.weekly ||
                element?.package.packageType == PackageType.monthly ||
                element?.package.packageType == PackageType.sixMonth,
          );
  if (weeklyOrMonthlyOrSemiAnnual == null) {
    return null;
  }
  final yearlyPrice = calculateYearlyPrice(weeklyOrMonthlyOrSemiAnnual);
  final discountPercentage =
      ((yearlyPrice - current.package.storeProduct.price) / yearlyPrice * 100)
          .round();
  return discountPercentage;
}

/// Calculates the discount amount in currency for a given [SubscriptionPackage] compared to other packages.
///
/// Parameters:
/// - `items`: List of all available subscription packages.
/// - `current`: The subscription package for which the discount is to be calculated.
///
/// Returns: The discount amount in currency for a given subscription package compared to other packages.
/// It follows a similar process to `getDiscount()`, but instead of returning the discount as a percentage, it returns the discount amount as a string with 2 decimal places and a currency symbol.
String? getDiscountInCurrency(
  List<SubscriptionPackage> items,
  SubscriptionPackage current,
) {
  final type = current.package.packageType;
  if (type == PackageType.weekly ||
      type == PackageType.monthly ||
      type == PackageType.sixMonth) {
    return null;
  }
  final weeklyOrMonthlyOrSemiAnnual =
      items.cast<SubscriptionPackage?>().firstWhereOrNull(
            (element) =>
                element?.package.packageType == PackageType.weekly ||
                element?.package.packageType == PackageType.monthly ||
                element?.package.packageType == PackageType.sixMonth,
          );
  if (weeklyOrMonthlyOrSemiAnnual == null) {
    return null;
  }
  final yearlyPrice = calculateYearlyPrice(weeklyOrMonthlyOrSemiAnnual);
  final discountInCurrency = yearlyPrice - current.package.storeProduct.price;
  final currencySymbol = cSymbol(current.package.storeProduct.currencyCode);
  return currencySymbol +
      discountInCurrency.toStringAsFixed(
        2,
      ); // returns the discount amount as a string with 2 decimal places and a currency symbol
}

/// Calculates the yearly price for a given [SubscriptionPackage].
///
/// Parameters:
/// - `package`: The subscription package for which the yearly price is to be calculated.
///
/// Returns: The yearly price for a given subscription package.
/// It multiplies the price of the package by the number of times the package recurs in a year.
/// For example, if the package is weekly, it multiplies the price by 52 (the number of weeks in a year).
double calculateYearlyPrice(SubscriptionPackage package) {
  switch (package.package.packageType) {
    case PackageType.weekly:
      return package.package.storeProduct.price * 52;
    case PackageType.monthly:
      return package.package.storeProduct.price * 12;
    case PackageType.twoMonth:
      return package.package.storeProduct.price * 6;
    case PackageType.threeMonth:
      return package.package.storeProduct.price * 4;
    case PackageType.sixMonth:
      return package.package.storeProduct.price * 2;
    case PackageType.unknown:
      return package.package.storeProduct.price;
    case PackageType.custom:
      return package.package.storeProduct.price;
    case PackageType.lifetime:
      return package.package.storeProduct.price;
    case PackageType.annual:
      return package.package.storeProduct.price;
  }
}
