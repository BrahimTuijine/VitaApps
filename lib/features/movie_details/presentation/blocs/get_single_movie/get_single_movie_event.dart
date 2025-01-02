part of 'get_single_movie_bloc.dart';

@freezed
class GetSingleMovieEvent with _$GetSingleMovieEvent {
  const factory GetSingleMovieEvent.getSingleMovie({required String imdbID}) =
      GetSingleMovie;
}
