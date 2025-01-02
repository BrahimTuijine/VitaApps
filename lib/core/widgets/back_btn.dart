import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:vita_apps/core/extensions/num.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      child: SizedBox(
        height: Device.screenType == ScreenType.mobile ? 41.fh : 56.th,
        width: Device.screenType == ScreenType.mobile ? 41.fh : 56.th,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            // color: Colors.black,
          ),
        ),
      ),
    );
  }
}
