import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/home_models_export.dart';
import '../../../domain/usecases/get_movies_list_usecase.dart';

part 'get_movies_list_bloc.freezed.dart';
part 'get_movies_list_event.dart';
part 'get_movies_list_state.dart';

@injectable
class GetMoviesListBloc extends Bloc<GetMoviesListEvent, GetMoviesListState> {
  final GetMoviesListUseCase getMoviesListUseCase;

  GetMoviesListBloc({required this.getMoviesListUseCase})
      : super(const _GetMoviesListInitial()) {
    on<GetMoviesListEvent>((event, emit) async {
      emit(const GetMoviesListState.loading());

      final result = await getMoviesListUseCase();

      result.fold((failure) {
        emit(GetMoviesListState.error(message: failure.message));
      }, (result) {
        emit(GetMoviesListState.loaded(result: result));
      });
    });
  }
}
