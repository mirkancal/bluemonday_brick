import 'package:purchases_flutter/purchases_flutter.dart';

String trialString(Package package) {
  final trial = package.storeProduct.introductoryPrice;
  if (trial == null) {
    return '';
  } else {
    final periodUnits = {
      PeriodUnit.day: 'days',
      PeriodUnit.week: 'days',
      PeriodUnit.month: 'months',
    };
    final text = trial.periodUnit == PeriodUnit.week
        ? '${7 * trial.periodNumberOfUnits}'
        : '${trial.periodNumberOfUnits}';
    return 'Try $text ${periodUnits[trial.periodUnit]} free';
  }
}
