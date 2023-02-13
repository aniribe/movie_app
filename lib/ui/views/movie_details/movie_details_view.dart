import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/consts/app_colors.dart';
import 'package:movie_app/consts/string_consts.dart';
import 'package:movie_app/moc_data/lists.dart';
import 'package:movie_app/ui/ui_utils/ui_helper.dart';
import 'package:movie_app/ui/widgets/glassmorphism_container.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/icon_button.dart';
import 'movie_details_viewmodel.dart';

class MovieDetailsView extends StackedView<MovieDetailsViewModel> {
  const MovieDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, MovieDetailsViewModel viewModel,
          Widget? child) =>
      Scaffold(
        backgroundColor: AppColors.black,
        body: PageContent(),
      );

  @override
  MovieDetailsViewModel viewModelBuilder(BuildContext context) =>
      MovieDetailsViewModel();
}
