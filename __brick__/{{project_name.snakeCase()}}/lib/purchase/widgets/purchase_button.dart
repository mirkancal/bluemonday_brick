import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/injectable.dart';
import 'package:{{project_name.snakeCase()}}/purchase/bloc/purchases_bloc.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({
    required this.package,
    required this.trialEnabled,
    required this.isTrialAvailable,
    super.key,
  });

  final SubscriptionPackage? package;
  final bool trialEnabled;
  final bool isTrialAvailable;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Container(
        width: 400,
        height: 54,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withOpacity(0.25),
              blurRadius: 24,
              offset: const Offset(4, 8),
            )
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          onPressed: () {
            if (package == null) return;
            // vibrationFeeback(type: FeedbackType.success);
            getIt<PurchasesBloc>().add(
              PurchasesEvent.purchase(package!),
            );
          },
          child: Text(
            trialEnabled
                ? 'Try & Subscribe'
                : isTrialAvailable
                    ? 'Continue'
                    : 'Unlock Premium Again',
            style: textTheme.labelLarge?.copyWith(
              color: colorScheme.onTertiary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
