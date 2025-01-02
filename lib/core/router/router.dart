import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_screen.dart';

part '../../features/home/presentation/routes/home_routes.dart';
part 'router.g.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: HomeRoute().location,
    routes: $appRoutes,
  );
}
