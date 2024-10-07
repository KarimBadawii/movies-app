import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/backdrop_movie_bloc/movie_backdrop_bloc.dart';

class MovieBackdropWidget extends StatelessWidget {
  const MovieBackdropWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          FractionallySizedBox(
            heightFactor: 1,
            widthFactor: 1,
            child: BlocBuilder<MovieBackdropBloc, MovieBackdropState>(
              builder: (context, state) {
                if (state is MovieBackdropChangedState) {
                  final imageUrl = ApiManager.imageUrlSmall +
                      (state.movie.backdropPath ?? "");
                  if (imageUrl.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                    );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.transparent,
              ))
        ],
      ),
    );
  }
}
