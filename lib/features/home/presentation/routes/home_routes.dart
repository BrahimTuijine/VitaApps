part of '../../../../core/router/router.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
        create: (context) =>
            getIt<GetMoviesListBloc>()..add(GetMoviesListEvent.getMoviesList()),
        child: HomeScreen(),
      );
}
