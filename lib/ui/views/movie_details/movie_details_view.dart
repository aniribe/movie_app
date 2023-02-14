import 'package:flutter/material.dart';
import 'package:movie_app/consts/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'components/page_content.dart';
import 'movie_details_viewmodel.dart';

class MovieDetailsView extends StackedView<MovieDetailsViewModel> {
  const MovieDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, MovieDetailsViewModel viewModel,
          Widget? child) =>
      Scaffold(
        backgroundColor: AppColors.black,
        body: PageContent(viewModel: viewModel),
      );

  @override
  MovieDetailsViewModel viewModelBuilder(BuildContext context) =>
      MovieDetailsViewModel();
}
