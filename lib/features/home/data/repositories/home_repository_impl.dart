import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures/failures.dart';
import '../../../../core/errors/exceptions/exceptions.dart';
import '../../../../core/network/network.dart';
import '../../data/models/home_models_export.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_data_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource dataSource;

  final NetworkInfo networkInfo;

  HomeRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<MovieModel>>> getMoviesList() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await dataSource.getMoviesList();
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
