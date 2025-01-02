import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:vita_apps/core/extensions/context.dart';
import 'package:vita_apps/core/extensions/num.dart';
import 'package:vita_apps/core/gen/assets.gen.dart';

import 'elevated_button.dart';

class AppPopUp {
  final void Function() onTryAgainPressed;
  final BuildContext context;
  final String message;
  final String btnMessage;

  AppPopUp.error({
    required this.onTryAgainPressed,
    required this.context,
    this.btnMessage = 'réessayer',
    required this.message,
  }) {
    _showPopUp();
  }

  AppPopUp.success({
    required this.onTryAgainPressed,
    required this.context,
    required this.message,
    this.btnMessage = 'Ok',
  });

  void _showPopUp() {
    Device.screenType == ScreenType.mobile
        ? showModalBottomSheet(
            context: context,
            isDismissible: true,
            isScrollControlled: true,
            builder: (_) => MsgContent(
              message: message,
              context: context,
              btnMessage: btnMessage,
              onTryAgainPressed: onTryAgainPressed,
            ),
          )
        : showDialog<void>(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext context) {
              return AlertDialog(
                content: MsgContent(
                  message: message,
                  context: context,
                  btnMessage: btnMessage,
                  onTryAgainPressed: onTryAgainPressed,
                ),
              );
            },
          );
  }
}

class MsgContent extends StatelessWidget {
  const MsgContent({
    super.key,
    required this.message,
    required this.context,
    required this.btnMessage,
    required this.onTryAgainPressed,
  });

  final String message;
  final BuildContext context;
  final String btnMessage;
  final void Function() onTryAgainPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.fw,
        vertical: 30.fh,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.images.error.svg(
            width: 188.fw,
            height: 214.fh,
            fit: BoxFit.scaleDown,
          ),
          8.fh.bh,
          Text(
            textAlign: TextAlign.center,
            message,
            style: context.h2,
          ),
          70.fh.bh,
          AppElevatedBtn(
            title: btnMessage,
            onPressed: () {
              onTryAgainPressed();
              context.pop();
            },
          )
        ],
      ),
    );
  }
}
