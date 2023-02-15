import 'package:flutter/material.dart';

import '../../../../moc_data/lists.dart';
import 'back_button_row.dart';
import 'title_section.dart';

class MovieData extends StatelessWidget {
  final int movieIndex;
  final VoidCallback onBackButtonPressed;

  const MovieData({
    super.key,
    required this.movieIndex,
    required this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonRow(onPressed: onBackButtonPressed),
            TitleSection(
              movieName: MocLists.movies[movieIndex].title,
              age: MocLists.movies[movieIndex].age,
              genre: MocLists.movies[movieIndex].genre,
              rating: MocLists.movies[movieIndex].rating,
            ),
          ],
        ),
      ),
    );
  }
}
