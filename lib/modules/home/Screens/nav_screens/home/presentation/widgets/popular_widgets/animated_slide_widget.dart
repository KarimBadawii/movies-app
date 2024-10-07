import 'package:flutter/cupertino.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/widgets/popular_widgets/poster_card_widget.dart';

class AnimatedSlideWidget extends StatelessWidget {
  final int index;
  final PageController pageController;
  final int movieId;
  final String posterPath;

  const AnimatedSlideWidget(
      {super.key,
      required this.index,
      required this.pageController,
      required this.movieId,
      required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          double? value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page! - index;
            value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
            return Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 350,
                width: 270,
                child: child,
              ),
            );
          } else {
            return Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 350,
                width: 270,
                child: child,
              ),
            );
          }
        },
        child: PosterCardWidget(movieId: movieId, posterPath: posterPath));
  }
}
