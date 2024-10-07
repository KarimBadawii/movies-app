import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/api/api_manager.dart';

class MovieCardWidget2 extends StatelessWidget {
  final int movieId;
  final String posterPath;

  const MovieCardWidget2(
      {super.key, required this.movieId, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Stack(children: [
        Column(
          children: [
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: ApiManager.imageUrlOriginal + posterPath,
                fit: BoxFit.cover,
              ),
            ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(0.2),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 30,
              height: 40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bookmark.png"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
