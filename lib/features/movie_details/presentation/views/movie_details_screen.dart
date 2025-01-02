import 'package:flutter/material.dart';
import 'package:vita_apps/core/extensions/num.dart';

import '../../../../core/widgets/text.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> movieData = {
    "Title": "The Matrix",
    "Year": "1999",
    "Rated": "R",
    "Released": "31 Mar 1999",
    "Runtime": "136 min",
    "Genre": "Action, Sci-Fi",
    "Director": "Lana Wachowski, Lilly Wachowski",
    "Writer": "Lilly Wachowski, Lana Wachowski",
    "Actors": "Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss",
    "Plot":
        "Thomas A. Anderson is a man living two lives. By day he is an average computer programmer and by night a hacker known as Neo. Neo has always questioned his reality, but the truth is far beyond his imagination. Neo finds himself targeted by the police when he is contacted by Morpheus, a legendary computer hacker branded a terrorist by the government. As a rebel against the machines, Neo must confront the agents: super-powerful computer programs devoted to stopping Neo and the entire human rebellion.",
    "Language": "English",
    "Country": "United States, Australia",
    "Awards": "Won 4 Oscars. 42 wins & 51 nominations total",
    "Poster":
        "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
    "Ratings": [
      {"Source": "Internet Movie Database", "Value": "8.7/10"},
      {"Source": "Rotten Tomatoes", "Value": "88%"},
      {"Source": "Metacritic", "Value": "73/100"}
    ],
    "Metascore": "73",
    "imdbRating": "8.7",
    "imdbVotes": "1,919,000",
    "imdbID": "tt0133093",
    "Type": "movie",
    "DVD": "15 May 2007",
    "BoxOffice": "\$172,076,928",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
  };

  MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieData['Title']),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16.fh,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Movie Poster
              Center(
                child: Image.network(
                  movieData['Poster'],
                  height: 300,
                ),
              ),
              // Title and Year
              AppText(
                "${movieData['Title']} (${movieData['Year']})",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // Genre, Rated, and Runtime
              AppText(
                "${movieData['Genre']} | Rated: ${movieData['Rated']} | ${movieData['Runtime']}",
                style: TextStyle(fontSize: 16),
              ),
              // Plot
              AppText(
                "Plot:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              AppText(movieData['Plot']),
              // Director, Writer, and Actors
              AppText(
                "Director: ${movieData['Director']}",
                style: TextStyle(fontSize: 16),
              ),
              AppText(
                "Writer: ${movieData['Writer']}",
                style: TextStyle(fontSize: 16),
              ),
              AppText(
                "Actors: ${movieData['Actors']}",
                style: TextStyle(fontSize: 16),
              ),
              // Ratings
              AppText(
                "Ratings:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...movieData['Ratings']
                  .map<Widget>(
                    (rating) => AppText(
                      "${rating['Source']}: ${rating['Value']}",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                  .toList(),
              // Other Details
              AppText(
                "Language: ${movieData['Language']}",
                style: TextStyle(fontSize: 16),
              ),
              AppText(
                "Country: ${movieData['Country']}",
                style: TextStyle(fontSize: 16),
              ),
              AppText(
                "Awards: ${movieData['Awards']}",
                style: TextStyle(fontSize: 16),
              ),
              AppText(
                "Box Office: ${movieData['BoxOffice']}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
