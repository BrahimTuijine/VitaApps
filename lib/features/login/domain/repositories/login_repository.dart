import '../../../../core/errors/failures/failures.dart';
import '../../domain/entities/login_entities_export.dart';
import 'package:dartz/dartz.dart';
import 'package:forge_annotation/forge_annotation.dart';

abstract class LoginRepository {
  @GET(endPoint: 'exemple')
  Future<Either<Failure, LoginEntity>> exemple();
}
