import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/movie_entity.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/backdrop_movie_bloc/movie_backdrop_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/popular_widgets/animated_slide_widget.dart';

class MoviePageViewWidget extends StatefulWidget {
  final List<MovieEntity>? movies;
  final int? initialPage;

  const MoviePageViewWidget(
      {super.key, required this.movies, required this.initialPage});

  @override
  State<MoviePageViewWidget> createState() => _MoviePageViewWidgetState();
}

class _MoviePageViewWidgetState extends State<MoviePageViewWidget> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: widget.initialPage!,
        keepPage: false,
        viewportFraction: 0.7);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 350,
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          final MovieEntity movie = widget.movies![index];
          return AnimatedSlideWidget(
              movieId: movie.id ?? 0,
              posterPath: movie.posterPath ?? "",
              index: index,
              pageController: _pageController);
        },
        pageSnapping: true,
        itemCount: widget.movies?.length ?? 0,
        onPageChanged: (index) {
          BlocProvider.of<MovieBackdropBloc>(context)
              .add(MovieBackdropChangedEvent(widget.movies![index]));
        },
      ),
    );
  }
}
