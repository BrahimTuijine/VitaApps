// To parse this JSON data, do
//
//     final movieModel = movieModelFromJson(jsonString);

import 'dart:convert';

List<MovieModel> movieModelFromJson(String str) =>
    List<MovieModel>.from(json.decode(str).map((x) => MovieModel.fromJson(x)));

String movieModelToJson(List<MovieModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MovieModel {
  String imdbId;
  String title;
  String imdbRating;
  String imdbVotes;

  MovieModel({
    required this.imdbId,
    required this.title,
    required this.imdbRating,
    required this.imdbVotes,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        imdbId: json["imdbID"],
        title: json["Title"],
        imdbRating: json["imdbRating"],
        imdbVotes: json["imdbVotes"],
      );

  Map<String, dynamic> toJson() => {
        "imdbID": imdbId,
        "Title": title,
        "imdbRating": imdbRating,
        "imdbVotes": imdbVotes,
      };
}
