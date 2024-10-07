import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../../../../../core/api/api_manager.dart';

class PosterCardWidget extends StatelessWidget {
  final int movieId;
  final String posterPath;

  const PosterCardWidget(
      {super.key, required this.movieId, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(45),
      elevation: 32,
      child: GestureDetector(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            imageUrl: ApiManager.imageUrlOriginal + posterPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
