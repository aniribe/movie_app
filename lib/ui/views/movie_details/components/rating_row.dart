import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../ui_utils/ui_helper.dart';
import '../../../widgets/glassmorphism_container.dart';
import 'movie_details_title.dart';

class RatingRow extends StatelessWidget {
  final String age;
  final String genre;
  final String rating;

  const RatingRow({
    super.key,
    required this.age,
    required this.genre,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GlassmorphismContainer(
          padding: const EdgeInsets.all(8),
          child: MovieDetailsTitle(title: age),
        ),
        horizontalSpace(10),
        GlassmorphismContainer(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: MovieDetailsTitle(title: genre),
        ),
        horizontalSpace(10),
        GlassmorphismContainer(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: AppColors.yellow,
                ),
                horizontalSpace(5),
                MovieDetailsTitle(title: rating),
              ],
            )),
      ],
    );
  }
}
