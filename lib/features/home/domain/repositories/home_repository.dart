import 'package:dartz/dartz.dart';
import 'package:forge_annotation/forge_annotation.dart';
import 'package:vita_apps/features/home/data/models/home_models_export.dart';

import '../../../../core/errors/failures/failures.dart';

abstract class HomeRepository {
  @GET(endPoint: 'exemple')
  Future<Either<Failure, List<MovieModel>>> getMoviesList();
}
