import 'package:flutter/material.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/movie_card_widget2.dart';
import '../../domain/entities/movie_entity.dart';

class ListViewBuilder extends StatelessWidget {
  final List<MovieEntity> movies;

  const ListViewBuilder({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: movies.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) {
        return const SizedBox(width: 5);
      },
      itemBuilder: (context, index) {
        final MovieEntity movie = movies[index];
        return MovieCardWidget2(
            movieId: movie.id ?? 0, posterPath: movie.posterPath ?? "");
      },
    );
  }
}
