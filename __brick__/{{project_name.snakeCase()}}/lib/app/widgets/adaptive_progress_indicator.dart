import 'package:flutter/material.dart';

class AdaptiveProgressIndicator extends StatelessWidget {
  const AdaptiveProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      backgroundColor: Theme.of(context).colorScheme.primary,
      valueColor: const AlwaysStoppedAnimation<Color>(
        Colors.white,
      ),
    );
  }
}
