part of 'get_movies_list_bloc.dart';

@freezed
class GetMoviesListEvent with _$GetMoviesListEvent {
  const factory GetMoviesListEvent.getMoviesList() = GetMoviesList;
}
