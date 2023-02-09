import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../../moc_data/lists.dart';
import '../../../ui_utils/ui_helper.dart';
import 'movie_imae_container.dart';
import 'movie_tite.dart';

class MoviesGrid extends StatelessWidget {
  final Function(int) onMoviePressed;

  const MoviesGrid({
    super.key,
    required this.onMoviePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: screenWidth(context),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 20,
          childAspectRatio: 1.5,
        ),
        itemCount: MocLists.movies.length,
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: () => onMoviePressed(index),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MovieImageContainer(imagePath: MocLists.movies[index].image),
                  verticalSpace(15),
                  MovieTitle(movieTitle: MocLists.movies[index].title),
                  verticalSpace(15),
                  LinearProgressIndicator(
                    backgroundColor: AppColors.grey.withOpacity(0.5),
                    color: AppColors.red.withOpacity(0.6),
                    value: MocLists.movies[index].watchedValue,
                    minHeight: 3,
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
