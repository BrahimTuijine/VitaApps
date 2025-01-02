part of 'get_movies_list_bloc.dart';

@freezed
class GetMoviesListState with _$GetMoviesListState {
  const factory GetMoviesListState.initial() = _GetMoviesListInitial;
  const factory GetMoviesListState.loading() = _GetMoviesListLoading;
  const factory GetMoviesListState.loaded({required List<MovieModel> result}) =
      _GetMoviesListLoaded;
  const factory GetMoviesListState.error({required String message}) =
      _GetMoviesListError;
}
