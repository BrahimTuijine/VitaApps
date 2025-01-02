import 'package:vita_apps/core/extensions/num.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DotSteps extends StatelessWidget {
  const DotSteps({
    super.key,
    required this.currentPageIndex,
    required this.pageLenght,
  });

  final int currentPageIndex;
  final int pageLenght;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageLenght,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.only(right: 7.fw),
          height: Device.screenType == ScreenType.mobile ? 6.fh : 9.th,
          width: currentPageIndex == index
              ? Device.screenType == ScreenType.mobile
                  ? 24.fw
                  : 36.tw
              : Device.screenType == ScreenType.mobile
                  ? 14.fw
                  : 21.tw,
          decoration: BoxDecoration(
            color:
                currentPageIndex == index ? Colors.black : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ).toList(),
    );
  }
}
