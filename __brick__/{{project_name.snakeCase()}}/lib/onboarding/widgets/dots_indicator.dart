import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/theme/theme.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    required this.currentPage,
    required this.length,
    super.key,
  });

  final int currentPage;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Container(
              height: 8,
              width: i == currentPage ? 32 : 8,
              decoration: BoxDecoration(
                color: i == currentPage ? theme.primaryColor : 'E0E0E0'.toColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
      ],
    );
  }
}
