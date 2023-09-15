import 'package:collection/collection.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';

/// Calculates the discount for a given subscription package.
///
/// This method calculates the discount for a given subscription package by comparing
/// the price of the current package with the price of a weekly or monthly package.
/// The discount is calculated as a percentage of the price difference.
///
/// Parameters:
/// - `items`: A list of available subscription packages.
/// - `current`: The current subscription package for which the discount is to be calculated.
///
/// Returns: The discount as an integer percentage, or null if no discount is available.
int? getDiscount(
  List<SubscriptionPackage> items,
  SubscriptionPackage current,
) {
  // Check if the current package is an annual package
  if (current.package.packageType == PackageType.annual) {
    // Find a weekly or monthly package from the list of items
    final weeklyOrMonthly = items.firstWhereOrNull(
      (element) =>
          element.package.packageType == PackageType.weekly ||
          element.package.packageType == PackageType.monthly,
    );

    // If a weekly or monthly package is found
    if (weeklyOrMonthly != null) {
      // Calculate the yearly price based on the weekly or monthly package price
      final yearlyPrice = weeklyOrMonthly.package.storeProduct.price *
          (weeklyOrMonthly.package.packageType == PackageType.weekly ? 52 : 12);
      // Calculate the discount as a percentage of the price difference
      return ((yearlyPrice - current.package.storeProduct.price) /
              yearlyPrice *
              100)
          .round();
    }
  }
  // Return null if no discount is available
  return null;
}
