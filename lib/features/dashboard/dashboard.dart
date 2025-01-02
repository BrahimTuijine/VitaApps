import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vita_apps/core/extensions/context.dart';

import '../../core/router/router.dart';

class MyDashboardScreen extends StatelessWidget {
  const MyDashboardScreen({required this.child, super.key});

  final Widget child;

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/profile')) {
      return 1;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = getCurrentIndex(context);
    //Define your dashboard UI, such as a bottom bar, navigation rail, etc.
    return Scaffold(
      body: Center(
        child: child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: context.primary,
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Color(0xFF8E8E8E),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        showUnselectedLabels: true,
        onTap: (index) {
          switch (index) {
            case 0:
              HomeRoute().go(context);
            case 1:
              ProfileRoute().go(context);
          }
        },
        currentIndex: selectedIndex,
        unselectedItemColor: const Color(0xFF8E8E8E),
        selectedItemColor: context.primary,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: 'Movies'),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
