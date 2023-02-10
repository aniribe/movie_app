import 'package:flutter/material.dart';
import '../../../ui_utils/ui_helper.dart';
import 'movies_grid.dart';
import 'section_name_row.dart';

class ContinueWatchingSection extends StatelessWidget {
  const ContinueWatchingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionNameRow(),
        verticalSpace(30),
        const MoviesGrid(),
      ],
    );
  }
}
