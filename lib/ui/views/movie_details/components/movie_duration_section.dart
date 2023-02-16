import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../ui_utils/ui_helper.dart';
import 'movie_name_and_duration_movie.dart';

class MovieDurationSection extends StatelessWidget {
  final String movieName;
  final String duration;
  final double watchedValue;

  const MovieDurationSection({
    super.key,
    required this.movieName,
    required this.duration,
    required this.watchedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          MovieNameAndDurationRow(
            movieName: movieName,
            duration: duration,
          ),
          verticalSpace(20),
          LinearProgressIndicator(
            backgroundColor: AppColors.darkGrey.withOpacity(0.5),
            color: AppColors.red,
            value: watchedValue,
          ),
        ],
      ),
    );
  }
}
