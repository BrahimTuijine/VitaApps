import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vita_apps/core/gen/injection.dart';
import 'package:vita_apps/core/storage/save_data.dart';
import 'package:vita_apps/features/dashboard/dashboard.dart';
import 'package:vita_apps/features/home/presentation/blocs/get_movies_list/get_movies_list_bloc.dart';

import '../../features/home/presentation/views/home_screen.dart';
import '../../features/login/views/login_screen.dart';
import '../../features/movie_details/presentation/blocs/get_single_movie/get_single_movie_bloc.dart';
import '../../features/movie_details/presentation/views/movie_details_screen.dart';
import '../../features/onboarding/presentation/views/onboarding_screen.dart';
import '../../features/profile/views/profile_screen.dart';

part '../../features/home/presentation/routes/home_routes.dart';
part '../../features/login/routes/login_routes.dart';
part '../../features/onboarding/presentation/routes/onboarding_routes.dart';
part 'router.g.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: LoginDataManager.getLoginData() != null
        ? HomeRoute().location
        : OnboardingRoute().location,
    routes: $appRoutes,
    navigatorKey: rootNavigatorKey,
  );
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<DashboardShellRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(
      path: '/home',
      routes: [
        TypedGoRoute<MovieDetailsRoute>(path: 'movieDetails'),
      ],
    ),
    TypedGoRoute<ProfileRoute>(path: '/profile'),
  ],
)
class DashboardShellRoute extends ShellRouteData {
  const DashboardShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    // In the navigator, we get the current tab widget.
    return MyDashboardScreen(child: navigator);
  }
}

class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
        create: (context) =>
            getIt<GetMoviesListBloc>()..add(GetMoviesListEvent.getMoviesList()),
        child: const HomeScreen(),
      );
}

class ProfileRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfileScreen();
}
