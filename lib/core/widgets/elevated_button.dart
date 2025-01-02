import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppElevatedBtn extends StatelessWidget {
  final String? title;
  final bool isDisabled;
  final bool isLoading;
  final void Function()? onPressed;

  const AppElevatedBtn({
    super.key,
    required this.title,
    this.isDisabled = false,
    this.isLoading = false,
    required this.onPressed,
  });

  const AppElevatedBtn.loading({
    super.key,
    this.isDisabled = true,
    this.isLoading = true,
    this.onPressed,
    this.title,
  });

  const AppElevatedBtn.disabled({
    super.key,
    this.isDisabled = true,
    this.isLoading = false,
    this.onPressed,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled || isLoading ? null : onPressed,
      child: isLoading
          ? Transform.scale(
              scale: .5,
              child: CircularProgressIndicator(),
            )
          : Text(title!),
    )
        .animate(delay: const Duration(milliseconds: 900))
        .fade(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        )
        .moveY(begin: 20, end: 0);
  }
}
