import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppShimmerLoading extends StatelessWidget {
  final Widget child;

  const AppShimmerLoading({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: child,
    );
  }
}
