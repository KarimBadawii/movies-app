import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/newrelease_movie_bloc/newrelease_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/list_view_builder.dart';
import '../../../../../../../../di/get_it.dart';
import '../../../domain/entities/movie_entity.dart';

class NewReleaseWidget extends StatelessWidget {
  NewReleaseWidget({
    super.key,
  });

  List<MovieEntity> movies = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewReleaseBloc(getUpcomingUseCase: getItInstance())
        ..add(const NewreleaseLoadEvent()),
      child: BlocBuilder<NewReleaseBloc, NewReleaseState>(
        builder: (context, state) {
          if (state is NewReleaseLoadState) {
            movies = state.movies;
            return Container(
              color: Colors.grey.shade800,
              width: double.infinity,
              height: 220,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "New Releases",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(child: ListViewBuilder(movies: movies)),
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
