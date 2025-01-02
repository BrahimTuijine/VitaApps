import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures/failures.dart';
import '../../../../core/errors/exceptions/exceptions.dart';
import '../../../../core/network/network.dart';
import '../../data/models/movie_details_models_export.dart';
import '../../domain/repositories/movie_details_repository.dart';
import '../datasources/movie_details_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MovieDetailsRepository)
class MovieDetailsRepositoryImpl implements MovieDetailsRepository {
  final MovieDetailsDataSource dataSource;

  final NetworkInfo networkInfo;

  MovieDetailsRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, MovieDetailsModel>> getSingleMovie(
      String imdbID) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await dataSource.getSingleMovie(imdbID);
        return Right(result);
      } on ServerException catch (error) {
        return Left(ServerFailure(msg: error.serverError));
      } catch (error) {
        return Left(UnexpectedFailure(msg: error.toString()));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
