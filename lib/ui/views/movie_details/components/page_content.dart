import 'package:flutter/material.dart';

import '../../../../moc_data/lists.dart';
import '../../../ui_utils/ui_helper.dart';
import '../movie_details_viewmodel.dart';
import 'continue_watching_button.dart';
import 'movie_duration_section.dart';
import 'movie_main_details.dart';

class PageContent extends StatelessWidget {
  final MovieDetailsViewModel viewModel;

  const PageContent({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MovieMainDetails(viewModel: viewModel),
          verticalSpace(25),
          MovieDurationSection(
            watchedValue:
                MocLists.movies[viewModel.movieIndex as int].watchedValue,
            movieName: MocLists.movies[viewModel.movieIndex as int].title,
            duration:
                '${MocLists.movies[viewModel.movieIndex as int].time} min',
          ),
          verticalSpace(30),
          const ContinueWatchingButton(),
          verticalSpace(30),
        ],
      ),
    );
  }
}
