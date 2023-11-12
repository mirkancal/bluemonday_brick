import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';

class OneTimeOffers {
  OneTimeOffers({
    required this.specialOffer,
    required this.discountedOffer,
  });

  final SubscriptionPackage? specialOffer;
  final SubscriptionPackage? discountedOffer;
}
