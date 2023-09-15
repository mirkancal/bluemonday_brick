import 'package:currency_symbols/currency_symbols.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

String subtitle(Package package) {
  final price = package.storeProduct.priceString;
  String period;
  switch (package.packageType) {
    case PackageType.monthly:
      period = 'month';
    case PackageType.weekly:
      period = 'week';
    case PackageType.annual:
      period = 'year';
    case PackageType.sixMonth:
      period = '6 months';
    case PackageType.threeMonth:
      period = '3 months';
    case PackageType.twoMonth:
      period = '2 month';
    case PackageType.lifetime:
      period = 'lifetime';
    case PackageType.unknown:
      period = '';
    case PackageType.custom:
      period = '';
  }
  if (package.packageType == PackageType.annual) {
    final monthly = (package.storeProduct.price / 12).toStringAsFixed(2);
    final code = package.storeProduct.currencyCode;
    return '${cSymbol(code)}$monthly / month, billed annually';
  }
  if (package.packageType == PackageType.lifetime) {
    return 'Pay once & enjoy forever';
  }
  return perPeriod(price, period);
}

String perPeriod(String text, String period) {
  if (period == 'lifetime') {
    return text;
  } else {
    return '$text per $period';
  }
}
