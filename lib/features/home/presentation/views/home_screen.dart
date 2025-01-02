import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vita_apps/core/extensions/num.dart';
import 'package:vita_apps/core/router/router.dart';
import 'package:vita_apps/core/theme/theme.dart';
import 'package:vita_apps/features/home/presentation/blocs/get_movies_list/get_movies_list_bloc.dart';
import 'package:vita_apps/features/home/presentation/widgets/movie_item.dart';

import '../../../../core/widgets/animated_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies List'),
        actions: [
          ThemeSwitcher.withTheme(
            clipper: ThemeSwitcherCircleClipper(),
            builder: (_, switcher, theme) {
              return IconButton(
                onPressed: () => switcher.changeTheme(
                  theme: theme.brightness == Brightness.light
                      ? darkTheme
                      : lightTheme,
                ),
                icon: Icon(
                    theme.brightness == Brightness.light
                        ? Icons.brightness_3
                        : Icons.sunny,
                    size: 25),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<GetMoviesListBloc, GetMoviesListState>(
        builder: (context, state) => state.maybeWhen(
          error: (message) => Center(
            child: Text(
              textAlign: TextAlign.center,
              message,
            ),
          ),
          loaded: (result) => ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 38.fh, horizontal: 16.fw),
            itemCount: result.length,
            separatorBuilder: (BuildContext context, int index) => 10.fh.bh,
            itemBuilder: (BuildContext context, int index) {
              final movie = result[index];
              return AppAnimatedList(
                index: index,
                child: MovieItem(
                  onTap: () => MovieDetailsRoute(
                    $extra: movie.imdbId,
                    title: movie.title,
                  ).push(context),
                  name: movie.title,
                  subtitle: movie.imdbVotes,
                  rating: movie.imdbRating,
                  image: '',
                ),
              );
            },
          ),
          orElse: () => Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
