import '../../../../core/errors/failures/failures.dart';
import '../../data/models/home_models_export.dart';
import '../repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetMoviesListUseCase {
  final HomeRepository repository;
  GetMoviesListUseCase(this.repository);

  Future<Either<Failure, List<MovieModel>>> call() async {
    return await repository.getMoviesList();
  }
}
