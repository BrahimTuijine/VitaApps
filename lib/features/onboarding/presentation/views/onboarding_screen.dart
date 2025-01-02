import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/extensions/context.dart';
import '../../../../core/extensions/num.dart';
import '../../../../core/widgets/dot_steps.dart';
import '../../../../core/widgets/text.dart';
import '../../model/onboarding_model.dart';
import '../widgets/image.dart';
import '../widgets/onboarding_btn.dart';
import '../widgets/subtitle.dart';
import '../widgets/title.dart';

class OnboardingScreen extends HookWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);
    final currentPageIndex = useState(0);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Device.screenType == ScreenType.mobile ? 20.fw : 70.tw,
        ),
        child: Column(
          children: [
            Device.screenType == ScreenType.mobile ? 90.fh.bh : 140.th.bh,
            SizedBox(
              height: 550.fh,
              child: PageView.builder(
                pageSnapping: true,
                onPageChanged: (value) => currentPageIndex.value = value,
                controller: pageController,
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      OnboardingTitle(title: onboardingData[index].title),
                      12.fh.bh,
                      OnboardingSubtitle(
                          subtitle: onboardingData[index].subtitle),
                      40.fh.bh,
                      OnboardingImage(),
                    ],
                  );
                },
              ),
            ),
            // 30.fh.bh,
            DotSteps(
              currentPageIndex: currentPageIndex.value,
              pageLenght: onboardingData.length,
            ),
            25.fh.bh,
            OnboardingBtn(
              currentPageIndex: currentPageIndex.value,
              pageController: pageController,
            ),
            25.fh.bh,
            // powerd by
            AppText(
              'Powered by Brahim tuijine',
              style: context.paragraph,
            ),
            // Next btm
          ],
        ),
      ),
    );
  }
}
