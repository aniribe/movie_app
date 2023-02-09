import 'package:flutter/material.dart';
import '../../../ui_utils/ui_helper.dart';
import 'movies_grid.dart';
import 'section_name_row.dart';

class ContinueWatchingSection extends StatelessWidget {
  final Function(int) onMoviePressed;

  const ContinueWatchingSection({
    super.key,
    required this.onMoviePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionNameRow(),
        verticalSpace(30),
        MoviesGrid(onMoviePressed: onMoviePressed),
      ],
    );
  }
}
