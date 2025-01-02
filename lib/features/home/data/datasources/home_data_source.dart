import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:vita_apps/core/data/movie_api.dart';

import '../../../../core/errors/exceptions/exceptions.dart';
import '../../data/models/home_models_export.dart';

abstract class HomeDataSource {
  Future<List<MovieModel>> getMoviesList();
}

@LazySingleton(as: HomeDataSource)
class HomeDataSourceImpl implements HomeDataSource {
  @override
  Future<List<MovieModel>> getMoviesList() async {
    try {
      final response = await MovieAPI.index();

      final List<dynamic> result = json.decode(response);

      return compute(
          (res) =>
              List<MovieModel>.from(result.map((x) => MovieModel.fromJson(x))),
          result);
    } catch (error) {
      throw ServerException(serverError: error.toString());
    }
  }
}
