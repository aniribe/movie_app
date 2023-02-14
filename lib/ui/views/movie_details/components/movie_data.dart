import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';
import '../../../../moc_data/lists.dart';
import '../../../ui_utils/ui_helper.dart';
import '../../../widgets/glassmorphism_container.dart';
import '../movie_details_viewmodel.dart';
import 'back_button_row.dart';
import 'movie_title.dart';
import 'rating_row.dart';

class MovieData extends StatelessWidget {
  final MovieDetailsViewModel viewModel;

  const MovieData({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonRow(onPressed: viewModel.onBackButtonPressed),
            Column(
              children: [
                MovieTitle(
                    title: MocLists.movies[viewModel.movieIndex as int].title),
                verticalSpace(10),
                RatingRow(
                  age: MocLists.movies[viewModel.movieIndex as int].age,
                  genre: MocLists.movies[viewModel.movieIndex as int].genre,
                  rating: MocLists.movies[viewModel.movieIndex as int].rating,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
