import 'dart:convert';

MovieDetailsEntity movieDetailsEntityFromJson(String str) =>
    MovieDetailsEntity.fromJson(json.decode(str));

String movieDetailsEntityToJson(MovieDetailsEntity data) =>
    json.encode(data.toJson());

class MovieDetailsEntity {
  MovieDetailsEntity();

  factory MovieDetailsEntity.fromJson(Map<String, dynamic> json) =>
      MovieDetailsEntity();

  Map<String, dynamic> toJson() => {};
}
