import '../../../../core/extensions/num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      fallbackWidth: 269.fw,
      fallbackHeight: 330.fh,
    )
        .animate(
          onPlay: (controller) => controller.repeat(reverse: true),
        )
        .moveY(
          begin: -15,
          end: 0,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
        );
  }
}
