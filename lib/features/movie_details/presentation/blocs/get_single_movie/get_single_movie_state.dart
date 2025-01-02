part of 'get_single_movie_bloc.dart';

@freezed
class GetSingleMovieState with _$GetSingleMovieState {
  const factory GetSingleMovieState.initial() = _GetSingleMovieInitial;
  const factory GetSingleMovieState.loading() = _GetSingleMovieLoading;
  const factory GetSingleMovieState.loaded(
      {required MovieDetailsModel result}) = _GetSingleMovieLoaded;
  const factory GetSingleMovieState.error({required String message}) =
      _GetSingleMovieError;
}
