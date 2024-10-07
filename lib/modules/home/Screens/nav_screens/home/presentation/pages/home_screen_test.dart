import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/di/get_it.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/backdrop_movie_bloc/movie_backdrop_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/movie_carousel_bloc/movie_carousel_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/newrelease_movie_bloc/newrelease_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/recommended_movie_bloc/recommended_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/popular_widgets/movie_carousel_widget.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/new_release_widgets/new_release_widget.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/recommended_widgets/recommended_widget.dart';

class HomeScreenTest extends StatefulWidget {
  const HomeScreenTest({super.key});

  @override
  State<HomeScreenTest> createState() => _HomeScreenTestState();
}

class _HomeScreenTestState extends State<HomeScreenTest> {
  MovieCarouselBloc? movieCarouselBloc;
  MovieBackdropBloc? movieBackdropBloc;
  RecommendedBloc? recommendedBloc;
  NewReleaseBloc? newreleaseBloc;

  @override
  void initState() {
    super.initState();
    movieCarouselBloc = getItInstance<MovieCarouselBloc>();
    recommendedBloc = getItInstance<RecommendedBloc>();
    newreleaseBloc = getItInstance<NewReleaseBloc>();
    movieBackdropBloc = movieCarouselBloc?.movieBackdropBloc;
    movieCarouselBloc?.add(const MovieCarouselLoadEvent());
  }

  @override
  void dispose() {
    super.dispose();
    movieCarouselBloc!.close();
    movieBackdropBloc!.close();
    recommendedBloc!.close();
    newreleaseBloc!.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MovieCarouselBloc>(
              create: (context) => movieCarouselBloc!),
          BlocProvider<MovieBackdropBloc>(
              create: (context) => movieBackdropBloc!),
          BlocProvider<RecommendedBloc>(create: (context) => recommendedBloc!),
          BlocProvider<NewReleaseBloc>(create: (context) => newreleaseBloc!),
        ],
        child: BlocBuilder<MovieCarouselBloc, MovieCarouselState>(
            builder: (context, state) {
          if (state is MovieCarouselLoadedState) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.black,
                toolbarHeight: 2,
              ),
              body: Stack(
                fit: StackFit.expand,
                children: [
                  FractionallySizedBox(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.46,
                    child: MovieCarouselWidget(
                        movies: state.movies, defaultIndex: state.defaultIndex),
                  ),
                  FractionallySizedBox(
                      alignment: Alignment.bottomCenter,
                      heightFactor: 0.54,
                      child: Column(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: 220,
                              child: NewReleaseWidget()),
                          SizedBox(
                              width: double.infinity,
                              height: 220,
                              child: RecommendedWidget()),
                        ],
                      )),
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.grey,
            ),
          );
        }));
  }
}

// return Container(
//     alignment: Alignment.center,
//     child: const Text(
//       "Loading...",
//       style: TextStyle(color: Colors.white, fontSize: 20),
//     )
// );
// },

//Scaffold(
//                 backgroundColor: Colors.transparent,
//                 body: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 50,
//                     ),
//                     // movies picture slider
//                     SizedBox(
//                       height: 350,
//                       width: double.infinity,
//                       child: Stack(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               // background
//                               Container(
//                                 width: double.infinity,
//                                 height: 200,
//                                 // decoration: const BoxDecoration(
//                                 //   image: DecorationImage(
//                                 //       image: AssetImage("assets/images/Image1.png"),
//                                 //       fit: BoxFit.cover),
//                                 // ),
//                                 child: CarouselSlider(
//                                     items: [
//                                      MovieCarouselWidget(movies:[] ),
//                                     ],
//                                     options:CarouselOptions(
//                                       viewportFraction: 0.7,
//                                     )),
//                               ),
//                               // movie details
//                               const Padding(
//                                 padding: EdgeInsets.only(left: 160, top: 10),
//                                 child: SizedBox(
//                                   width: 260,
//                                   height: 120,
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "Name of the movie of this fkin movie",
//                                         style: TextStyle(
//                                             color: Colors.white, fontSize: 20),
//                                       ),
//                                       SizedBox(
//                                         height: 19,
//                                       ),
//                                       Text(
//                                         "year and time ",
//                                         style: TextStyle(
//                                             color: Colors.grey, fontSize: 15),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           // movie pic
//                           Padding(
//                             padding: const EdgeInsets.only(left: 25, top: 80),
//                             child: Container(
//                               width: 150,
//                               height: 250,
//                               decoration: const BoxDecoration(
//                                 image: DecorationImage(
//                                     image: AssetImage("assets/images/Dora.png"),
//                                     fit: BoxFit.fill),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // new release
//                     Container(
//                       color: Colors.grey.shade800,
//                       width: double.infinity,
//                       height: 230,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "New Releases",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Expanded(
//                               child: ListView.builder(
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: 10,
//                                 // state.moviesModel?.data.length
//                                 itemBuilder: (context, index) {
//                                   return const CustomCardWidget();
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     // recommended
//                     Container(
//                       color: Colors.grey.shade800,
//                       width: double.infinity,
//                       height: 230,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Recommended",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Expanded(
//                               child: ListView(
//                                   scrollDirection: Axis.horizontal,
//                                   children: const [
//                                     CustomCardWidget(),
//                                     CustomCardWidget(),
//                                     CustomCardWidget(),
//                                     CustomCardWidget(),
//                                     CustomCardWidget(),
//                                     CustomCardWidget(),
//                                   ]),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
