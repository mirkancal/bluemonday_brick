import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';
import 'package:{{project_name.snakeCase()}}/app/utils/constants/url.dart';
import 'package:{{project_name.snakeCase()}}/app/utils/extensions/string_extensions.dart';
import 'package:{{project_name.snakeCase()}}/app/widgets/adaptive_progress_indicator.dart';
import 'package:{{project_name.snakeCase()}}/injectable.dart';
import 'package:{{project_name.snakeCase()}}/purchase/bloc/purchases_bloc.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';
import 'package:{{project_name.snakeCase()}}/purchase/utils/get_discount.dart';
import 'package:{{project_name.snakeCase()}}/purchase/widgets/offer_card.dart';
import 'package:{{project_name.snakeCase()}}/purchase/widgets/purchase_button.dart';
import 'package:{{project_name.snakeCase()}}/resources/resources.dart';
import 'package:url_launcher/url_launcher.dart';

class PaywallPage extends StatelessWidget {
  const PaywallPage({super.key});

  static const routeName = 'paywall';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<PurchasesBloc, PurchasesState>(
      bloc: getIt<PurchasesBloc>(),
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final packages = state.maybeMap(
          itemsReady: (_) => _.items,
          orElse: () => <SubscriptionPackage>[],
        );
        final index = state.maybeMap(
          itemsReady: (_) => _.selectedIndex,
          orElse: () => 0,
        );

        final trialEnabled = state.maybeMap(
          itemsReady: (_) => _.trialEnabled,
          orElse: () => false,
        );

        final oneTimeOffers = state.maybeMap(
          itemsReady: (_) => _.oneTimeOffers,
          orElse: () => null,
        );
        final isTrialAvailable = state.maybeMap(
          itemsReady: (_) => _.isTrialAvailable,
          orElse: () => false,
        );
        final title =
            packages.isNotEmpty && packages.first.metadata['title'] != null
                ? packages.first.metadata['title']! as String
                : 'Get more done\nin **less time**';
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: packages.isNotEmpty
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PurchaseButton(
                      package: packages[index],
                      trialEnabled: trialEnabled,
                      isTrialAvailable: isTrialAvailable,
                    ),
                    const SizedBox(height: 16),
                    const RestoreAndConditionsWidgets(),
                  ],
                )
              : const SizedBox(),
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Center(
              child: SafeArea(
                top: false,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    const _PaywallImage(),
                    const SizedBox(height: 16),
                    _Title(title),
                    const SizedBox(height: 16),
                    const _PremiumFeatures(),
                    const SizedBox(height: 16),
                    const Offers(),
                    const SizedBox(height: 160),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class RestoreAndConditionsWidgets extends StatelessWidget {
  const RestoreAndConditionsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTextStyle(
      style: theme.textTheme.bodySmall!.copyWith(
        color: '858494'.toColor,
        fontWeight: FontWeight.w600,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              getIt<PurchasesBloc>().add(const PurchasesEvent.restore());
            },
            child: const Text('Restore Subscription'),
          ),
          const Text(' • '),
          GestureDetector(
            onTap: () {
              // vibrationFeeback(type: FeedbackType.success);
              launchUrl(termsOfUse.toUri());
            },
            child: const Text('Terms & Conditions'),
          ),
        ],
      ),
    );
  }
}

class Offers extends StatelessWidget {
  const Offers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<PurchasesBloc, PurchasesState>(
      bloc: getIt<PurchasesBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          itemsReady: (state) {
            final packages = state.maybeMap(
              itemsReady: (_) => _.items,
              orElse: () => <SubscriptionPackage>[],
            );
            final index = state.maybeMap(
              itemsReady: (_) => _.selectedIndex,
              orElse: () => 0,
            );

            final trialEnabled = state.maybeMap(
              itemsReady: (_) => _.trialEnabled,
              orElse: () => false,
            );
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: OfferSection(
                trialEnabled: trialEnabled,
                isTrialAvailable: state.isTrialAvailable,
                packages: packages,
                index: index,
              ),
            );
          },
          loading: (_) {
            return const Center(
              child: AdaptiveProgressIndicator(),
            );
          },
          waitingToRestore: (_) {
            return const Center(
              child: AdaptiveProgressIndicator(),
            );
          },
          orElse: () {
            return Container();
          },
        );
      },
    );
  }
}

class OfferSection extends StatelessWidget {
  const OfferSection({
    super.key,
    required this.trialEnabled,
    required this.isTrialAvailable,
    required this.packages,
    required this.index,
  });

  final bool trialEnabled;
  final bool isTrialAvailable;
  final List<SubscriptionPackage> packages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return packages.length >= 3
        ? Column(
            children: [
              TrialToggle(
                enabled: isTrialAvailable && trialEnabled,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 16),
                  for (var i = 0; i < packages.length; i++) ...[
                    OfferCard.compact(
                      trialOn: trialEnabled,
                      sub: packages[i],
                      isSelected: index == i,
                      onTap: () {
                        // vibrationFeeback(type: FeedbackType.selection);
                        getIt<PurchasesBloc>().add(
                          PurchasesEvent.selectPackage(i),
                        );
                      },
                      isBestDeal:
                          packages[i].package.packageType == PackageType.annual,
                      discount: getDiscount(packages, packages[i]),
                      discountAmountInCurrency: getDiscountInCurrency(
                        packages,
                        packages[i],
                      ),
                    ),
                    if (i != packages.length) const SizedBox(height: 8),
                  ],
                ],
              ),
            ],
          )
        : Column(
            children: [
              TrialToggle(
                enabled: isTrialAvailable && trialEnabled,
              ),
              const SizedBox(height: 16),
              for (var i = 0; i < packages.length; i++) ...[
                OfferCard.extended(
                  trialOn: trialEnabled,
                  sub: packages[i],
                  isSelected: index == i,
                  onTap: () {
                    // vibrationFeeback(type: FeedbackType.selection);
                    getIt<PurchasesBloc>().add(
                      PurchasesEvent.selectPackage(i),
                    );
                  },
                  isBestDeal:
                      packages[i].package.packageType == PackageType.annual,
                  discount: getDiscount(packages, packages[i]),
                  discountAmountInCurrency: getDiscountInCurrency(
                    packages,
                    packages[i],
                  ),
                ),
                if (i != packages.length) const SizedBox(height: 8),
              ],
            ],
          );
  }
}

class TrialToggle extends StatelessWidget {
  const TrialToggle({
    required this.enabled,
    super.key,
  });

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.calendar_month,
              color: '616161'.toColor,
            ),
            const SizedBox(width: 10),
            Text(
              'Enable Free Trial',
              style: TextStyle(
                color: '616161'.toColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          width: 50,
          child: FittedBox(
            fit: BoxFit.fill,
            child: CupertinoSwitch(
              trackColor: MaterialStateColor.resolveWith(
                (states) => '616161'.toColor,
              ),
              activeColor: theme.colorScheme.primary.withOpacity(0.75),
              value: enabled,
              onChanged: (val) {
                getIt<PurchasesBloc>().add(
                  PurchasesEvent.toggleTrial(
                    trialEnabled: val,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _PremiumFeatures extends StatelessWidget {
  const _PremiumFeatures();

  static const features = [
    'Unlock the full experience',
    'Unlimited access',
    'Unlimited file upload',
    'No daily limit',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: features.map((feature) {
              return Icon(
                Icons.check,
                color: theme.colorScheme.primary,
                size: 22,
              );
            }).toList(),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: features.map((feature) {
              return Text(
                feature,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title(this.data);

  final String data;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return BlocBuilder<PurchasesBloc, PurchasesState>(
      bloc: getIt<PurchasesBloc>(),
      builder: (context, state) {
        final isTrialAvailable = state.maybeMap(
          itemsReady: (_) => _.isTrialAvailable,
          orElse: () => false,
        );
        return RichTextFromJson(theme: theme, jsonTitle: data);
      },
    );
  }
}

class _PaywallImage extends StatelessWidget {
  const _PaywallImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      UI.paywall,
      height: 200,
    );
  }
}

class RichTextFromJson extends StatelessWidget {
  const RichTextFromJson(
      {required this.theme, required this.jsonTitle, super.key});
  final String jsonTitle;
  final ThemeData theme;

  List<TextSpan> parseJsonTitle() {
    final spans = <TextSpan>[];
    final splitTextByNewline = jsonTitle.split('\n');

    for (var lineIndex = 0;
        lineIndex < splitTextByNewline.length;
        lineIndex++) {
      final line = splitTextByNewline[lineIndex];
      final splitText = line.split('**');

      for (var i = 0; i < splitText.length; i++) {
        final style = i.isEven
            ? theme.textTheme.headlineMedium?.copyWith(
                color: theme.colorScheme.onBackground,
              )
            : TextStyle(
                color: theme.colorScheme.primary,
              );
        spans.add(TextSpan(text: splitText[i], style: style));
      }

      // Add a TextSpan for the newline, except for the last line
      if (lineIndex < splitTextByNewline.length - 1) {
        spans.add(const TextSpan(text: '\n'));
      }
    }

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        // default style for text spans
        style: theme.textTheme.headlineMedium?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
        children: parseJsonTitle(),
      ),
    );
  }
}
