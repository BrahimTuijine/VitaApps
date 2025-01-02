// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../../../core/router/router.dart';

@TypedGoRoute<MovieDetailsRoute>(path: '/movieDetails')
class MovieDetailsRoute extends GoRouteData {
  MovieDetailsRoute({required this.$extra});

  final String $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
        create: (context) => getIt<GetSingleMovieBloc>()
          ..add(GetSingleMovieEvent.getSingleMovie(imdbID: $extra)),
        child: MovieDetailsScreen(),
      );
}
