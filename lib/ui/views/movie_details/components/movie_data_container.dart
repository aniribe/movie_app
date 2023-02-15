import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../ui_utils/ui_helper.dart';
import 'movie_data.dart';

class MovieDataContainer extends StatelessWidget {
  final int movieIndex;
  final VoidCallback onBackButtonPressed;

  const MovieDataContainer({
    super.key,
    required this.movieIndex,
    required this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.72,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              AppColors.black.withOpacity(0),
              AppColors.black.withOpacity(0.95),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.65, 1]),
      ),
      child: MovieData(
        movieIndex: movieIndex,
        onBackButtonPressed: onBackButtonPressed,
      ),
    );
  }
}
