import 'package:flutter/material.dart';

import '../../../../core/extensions/context.dart';
import '../../../../core/widgets/text.dart';

class OnboardingSubtitle extends StatelessWidget {
  const OnboardingSubtitle({
    super.key,
    required this.subtitle,
  });

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return AppText(
      textAlign: TextAlign.center,
      subtitle,
      style: context.paragraph,
    );
  }
}
