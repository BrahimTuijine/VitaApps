import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vita_apps/core/gen/injection.dart';

import '../../features/home/presentation/blocs/get_movies_list/get_movies_list_bloc.dart';
import '../../features/home/presentation/views/home_screen.dart';
import '../../features/login/presentation/views/login_screen.dart';
import '../../features/onboarding/presentation/views/onboarding_screen.dart';

part '../../features/home/presentation/routes/home_routes.dart';
part '../../features/login/presentation/routes/login_routes.dart';
part '../../features/onboarding/presentation/routes/onboarding_routes.dart';

part 'router.g.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: HomeRoute().location,
    routes: $appRoutes,
  );
}
