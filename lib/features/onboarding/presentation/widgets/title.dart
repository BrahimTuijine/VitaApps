import 'package:flutter/material.dart';

import '../../../../core/extensions/context.dart';
import '../../../../core/widgets/text.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppText(
      textAlign: TextAlign.center,
      title,
      style: context.h2,
    );
  }
}
