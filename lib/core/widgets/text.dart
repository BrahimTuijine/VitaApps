import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: style,
    )
        .animate()
        .fadeIn(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        )
        .moveY(
          begin: -10,
          end: 0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
  }
}
