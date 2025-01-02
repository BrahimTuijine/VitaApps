import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/movie_details_models_export.dart';
import '../../../domain/usecases/get_single_movie_usecase.dart';

part 'get_single_movie_bloc.freezed.dart';
part 'get_single_movie_event.dart';
part 'get_single_movie_state.dart';

@injectable
class GetSingleMovieBloc
    extends Bloc<GetSingleMovieEvent, GetSingleMovieState> {
  final GetSingleMovieUseCase getSingleMovieUseCase;

  GetSingleMovieBloc({required this.getSingleMovieUseCase})
      : super(const _GetSingleMovieInitial()) {
    on<GetSingleMovieEvent>((event, emit) async {
      emit(const GetSingleMovieState.loading());

      final result = await getSingleMovieUseCase(event.imdbID);

      result.fold((failure) {
        emit(GetSingleMovieState.error(message: failure.message));
      }, (result) {
        emit(GetSingleMovieState.loaded(result: result));
      });
    });
  }
}
