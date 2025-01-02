part of '../../../../core/router/router.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<MovieDetailsRoute>(path: 'movieDetails'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
        create: (context) =>
            getIt<GetMoviesListBloc>()..add(GetMoviesListEvent.getMoviesList()),
        child: HomeScreen(),
      );
}

class MovieDetailsRoute extends GoRouteData {
  MovieDetailsRoute({
    required this.$extra,
    required this.title,
  });

  final String $extra;
  final String title;

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
        create: (context) => getIt<GetSingleMovieBloc>()
          ..add(GetSingleMovieEvent.getSingleMovie(imdbID: $extra)),
        child: MovieDetailsScreen(title: title),
      );
}
