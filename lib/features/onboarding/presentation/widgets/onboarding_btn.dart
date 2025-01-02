import 'package:flutter/material.dart';

import '../../../../core/router/router.dart';
import '../../../../core/widgets/elevated_button.dart';
import '../../model/onboarding_model.dart';

class OnboardingBtn extends StatelessWidget {
  final int currentPageIndex;
  final PageController pageController;
  const OnboardingBtn({
    super.key,
    required this.currentPageIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return AppElevatedBtn(
      title: onboardingData[currentPageIndex].btnTitle,
      onPressed: () {
        if (currentPageIndex < onboardingData.length - 1) {
          pageController.nextPage(
              duration: const Duration(milliseconds: 600), curve: Curves.ease);
        } else {
          LoginRoute().go(context);
        }
      },
    );
  }
}
