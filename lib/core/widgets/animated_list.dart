import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AppAnimatedList extends StatelessWidget {
  const AppAnimatedList({
    super.key,
    required this.index,
    required this.child,
  });
  final int index;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 400),
      child: SlideAnimation(
        verticalOffset: 44.0,
        child: FadeInAnimation(
          child: child,
        ),
      ),
    );
  }
}
