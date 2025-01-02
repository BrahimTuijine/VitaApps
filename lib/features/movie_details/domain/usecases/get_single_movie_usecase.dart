import '../../../../core/errors/failures/failures.dart';
import '../../data/models/movie_details_models_export.dart';
import '../repositories/movie_details_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetSingleMovieUseCase {
  final MovieDetailsRepository repository;
  GetSingleMovieUseCase(this.repository);

  Future<Either<Failure, MovieDetailsModel>> call(String imdbID) async {
    return await repository.getSingleMovie(imdbID);
  }
}
