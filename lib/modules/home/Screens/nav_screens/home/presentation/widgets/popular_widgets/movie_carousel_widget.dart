import 'package:flutter/cupertino.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/movie_entity.dart';
import 'movie_backdrop_widget.dart';
import 'movie_pageview_widget.dart';

class MovieCarouselWidget extends StatelessWidget {
  List<MovieEntity>? movies;
  int defaultIndex;

  MovieCarouselWidget(
      {super.key, required this.movies, required this.defaultIndex});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const MovieBackdropWidget(),
        Column(
          children: [
            MoviePageViewWidget(movies: movies, initialPage: defaultIndex),
          ],
        ),
      ],
    );
  }
}
