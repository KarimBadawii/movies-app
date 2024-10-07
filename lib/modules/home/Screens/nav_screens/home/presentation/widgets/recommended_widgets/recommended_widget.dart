import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/di/get_it.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/recommended_movie_bloc/recommended_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/list_view_builder.dart';

import '../../../domain/entities/movie_entity.dart';

class RecommendedWidget extends StatelessWidget {
  RecommendedWidget({super.key});

  List<MovieEntity> movies = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecommendedBloc(getTopRatedUseCase: getItInstance())
        ..add(RecommendedLoadedEvent()),
      child: BlocBuilder<RecommendedBloc, RecommendedState>(
        builder: (context, state) {
          if (state is RecommendedLoadedState) {
            movies = state.movies;
            return Container(
              color: Colors.grey.shade800,
              width: double.infinity,
              height: 230,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recommended",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ListViewBuilder(movies: movies);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
