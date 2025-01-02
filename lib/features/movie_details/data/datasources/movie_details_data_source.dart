import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/movie_api.dart';
import '../../../../core/errors/exceptions/exceptions.dart';
import '../../data/models/movie_details_models_export.dart';

abstract class MovieDetailsDataSource {
  Future<MovieDetailsModel> getSingleMovie(String imdbID);
}

@LazySingleton(as: MovieDetailsDataSource)
class MovieDetailsDataSourceImpl implements MovieDetailsDataSource {
  @override
  Future<MovieDetailsModel> getSingleMovie(String imdbID) async {
    try {
      final response = await MovieAPI.get(imdbID);

      final result = json.decode(response);

      return compute(
          MovieDetailsModel.fromJson, result as Map<String, dynamic>);
    } catch (error) {
      throw ServerException(serverError: error.toString());
    }
  }
}
