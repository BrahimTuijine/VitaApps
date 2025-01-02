import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita_apps/core/extensions/num.dart';
import 'package:vita_apps/features/movie_details/presentation/blocs/get_single_movie/get_single_movie_bloc.dart';

import '../../../../core/widgets/text.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String title;

  const MovieDetailsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<GetSingleMovieBloc, GetSingleMovieState>(
        builder: (context, state) => state.maybeWhen(
          loaded: (movie) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 16.fh,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Movie Poster
                    Center(
                      child: Image.network(
                        movie.poster,
                        height: 300.fh,
                        loadingBuilder: (context, child, loadingProgress) =>
                            SizedBox(
                          height: 300.fh,
                          child: Center(child: CircularProgressIndicator()),
                        ),
                      ),
                    ),
                    // CachedNetworkImage(
                    //   imageUrl: movie.poster,
                    //   placeholder: (context, url) => SizedBox(
                    //     height: 300.fh,
                    //     child: Center(
                    //       child: CircularProgressIndicator(),
                    //     ),
                    //   ),
                    //   errorWidget: (context, url, error) => SizedBox(
                    //     // width: 60.fh,
                    //     height: 300.fh,
                    //   ),
                    //   imageBuilder: (context, imageProvider) {
                    //     return Container(
                    //       // width: 60.fh,
                    //       height: 300.fh,
                    //       decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //             image: imageProvider, fit: BoxFit.fill),
                    //       ),
                    //     );
                    //   },
                    // ),
                    // Title and Year
                    AppText(
                      "${movie.title} (${movie.year})",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    // Genre, Rated, and Runtime
                    AppText(
                      "${movie.genre} | Rated: ${movie.rated} | ${movie.runtime}",
                      style: TextStyle(fontSize: 16),
                    ),
                    // Plot
                    AppText(
                      "Plot:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    AppText(movie.plot),
                    // Director, Writer, and Actors
                    AppText(
                      "Director: ${movie.director}",
                      style: TextStyle(fontSize: 16),
                    ),
                    AppText(
                      "Writer: ${movie.writer}",
                      style: TextStyle(fontSize: 16),
                    ),
                    AppText(
                      "Actors: ${movie.actors}",
                      style: TextStyle(fontSize: 16),
                    ),
                    // Ratings
                    AppText(
                      "Ratings:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ...movie.ratings.map<Widget>(
                      (rating) => AppText(
                        "${rating.source}: ${rating.value}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    // Other Details
                    AppText(
                      "Language: ${movie.language}",
                      style: TextStyle(fontSize: 16),
                    ),
                    AppText(
                      "Country: ${movie.country}",
                      style: TextStyle(fontSize: 16),
                    ),
                    AppText(
                      "Awards: ${movie.awards}",
                      style: TextStyle(fontSize: 16),
                    ),
                    AppText(
                      "Box Office: ${movie.boxOffice}",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () => Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
