import '../../../../core/errors/failures/failures.dart';
import '../../data/models/movie_details_models_export.dart';
import 'package:dartz/dartz.dart';
import 'package:forge_annotation/forge_annotation.dart';

abstract class MovieDetailsRepository {
  @GET(endPoint: 'exemple')
  Future<Either<Failure, MovieDetailsModel>> getSingleMovie(String imdbID);
}
