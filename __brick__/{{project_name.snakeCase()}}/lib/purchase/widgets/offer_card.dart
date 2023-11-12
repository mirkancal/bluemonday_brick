import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';
import 'package:recase/recase.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';
import 'package:{{project_name.snakeCase()}}/purchase/utils/get_subtitle.dart';
import 'package:{{project_name.snakeCase()}}/purchase/utils/get_trial.dart';

class OfferCard extends StatelessWidget {
  const OfferCard._({
    required this.sub,
    required this.onTap,
    super.key,
    bool? isBestDeal,
    bool? isSelected,
    bool? trialOn,
    bool? isCompact,
    this.discount,
    this.discountAmountInCurrency,
  })  : isBestDeal = isBestDeal ?? false,
        isSelected = isSelected ?? false,
        trialOn = trialOn ?? false,
        isCompact = isCompact ?? false;

  const OfferCard.compact(
      {required SubscriptionPackage sub,
      required VoidCallback onTap,
      Key? key,
      bool? isBestDeal,
      bool? isSelected,
      bool? trialOn,
      int? discount,
      String? discountAmountInCurrency})
      : this._(
          sub: sub,
          onTap: onTap,
          key: key,
          isBestDeal: isBestDeal,
          isSelected: isSelected,
          trialOn: trialOn,
          discount: discount,
          isCompact: true,
          discountAmountInCurrency: discountAmountInCurrency,
        );

  const OfferCard.extended({
    required SubscriptionPackage sub,
    required VoidCallback onTap,
    Key? key,
    bool? isBestDeal,
    bool? isSelected,
    bool? trialOn,
    int? discount,
    String? discountAmountInCurrency,
  }) : this._(
          sub: sub,
          onTap: onTap,
          key: key,
          isBestDeal: isBestDeal,
          isSelected: isSelected,
          trialOn: trialOn,
          discount: discount,
          isCompact: false,
          discountAmountInCurrency: discountAmountInCurrency,
        );

  final SubscriptionPackage sub;
  Package get package => sub.package;

  final bool isBestDeal;
  final bool isCompact;
  final bool trialOn;
  final bool isSelected;
  final VoidCallback onTap;
  final int? discount;
  final String? discountAmountInCurrency;

  String get title => package.packageType.name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final currencyGroup = AutoSizeGroup();
    const compactSize = 90.0;
    const ribbonWidth = 80.0;
    const ribbonHeight = 16.0;

    final width = MediaQuery.of(context).size.width * 0.8;
    return isCompact
        ? GestureDetector(
            onTap: onTap,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: compactSize,
                  width: compactSize,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? theme.colorScheme.secondary
                        : 'EAF1FF'.toColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: textTheme.titleSmall?.copyWith(
                                color: isSelected
                                    ? theme.colorScheme.onSecondary
                                    : '001833'.toColor,
                              ),
                            ),
                            Text(
                              package.storeProduct.priceString,
                              style: textTheme.titleMedium?.copyWith(
                                color: isSelected
                                    ? theme.colorScheme.onSecondary
                                    : '001833'.toColor,
                              ),
                            ),
                            // AutoSizeText(
                            //   subtitle(package),
                            //   style: textTheme.labelSmall?.copyWith(
                            //     color: isSelected
                            //         ? theme.colorScheme.onSecondary
                            //         : '001833'.toColor,
                            //   ),
                            //   group: currencyGroup,
                            //   minFontSize: 14,
                            //   maxLines: 2,
                            //   textAlign: TextAlign.center,
                            // ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                // Container(
                                //   height: 30,
                                //   alignment: Alignment.center,
                                //   child: Text(
                                //     title.titleCase,
                                //     style: textTheme.titleSmall?.copyWith(
                                //       color: isSelected
                                //           ? theme.colorScheme.onSecondary
                                //           : '001833'.toColor,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                            // if (trialString(package).isNotEmpty)
                            //   AutoSizeText(
                            //     trialString(package),
                            //     style: textTheme.labelSmall?.copyWith(
                            //       color: isSelected
                            //           ? theme.colorScheme.onSecondary
                            //           : theme.colorScheme.primary,
                            //     ),
                            //     group: currencyGroup,
                            //     minFontSize: 14,
                            //     maxLines: 2,
                            //     textAlign: TextAlign.center,
                            //   ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (discountAmountInCurrency != null)
                  Positioned(
                    bottom: -(ribbonHeight / 2),
                    left: (compactSize - ribbonWidth) / 2,
                    child: Container(
                      height: ribbonHeight,
                      width: ribbonWidth,
                      decoration: BoxDecoration(
                        color: theme.scaffoldBackgroundColor,
                        border: Border.all(
                          color: theme.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${discountAmountInCurrency!} OFF',
                        style: textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        : GestureDetector(
            onTap: onTap,
            child: Container(
              height: 78,
              width: width,
              decoration: BoxDecoration(
                color:
                    isSelected ? theme.colorScheme.secondary : 'EAF1FF'.toColor,
                borderRadius: BorderRadius.circular(16),
              ),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${package.storeProduct.priceString} ${title.titleCase}',
                                  style: textTheme.titleMedium?.copyWith(
                                    color: isSelected
                                        ? theme.colorScheme.onSecondary
                                        : '001833'.toColor,
                                  ),
                                ),
                                AutoSizeText(
                                  subtitle(package),
                                  style: textTheme.labelSmall?.copyWith(
                                    color: isSelected
                                        ? theme.colorScheme.onSecondary
                                        : '001833'.toColor,
                                  ),
                                  group: currencyGroup,
                                  minFontSize: 14,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                ),
                                if (trialString(package).isNotEmpty)
                                  AutoSizeText(
                                    trialString(package),
                                    style: textTheme.labelSmall?.copyWith(
                                      color: isSelected
                                          ? theme.colorScheme.onSecondary
                                          : theme.colorScheme.primary,
                                    ),
                                    group: currencyGroup,
                                    minFontSize: 14,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (discountAmountInCurrency != null)
                    Positioned(
                      right: 12,
                      top: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 2,
                        ),
                        child: Text(
                          '$discountAmountInCurrency OFF',
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
  }
}
