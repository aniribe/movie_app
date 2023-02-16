import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';
import '../../../../moc_data/lists.dart';
import '../../../ui_utils/ui_helper.dart';
import '../movie_details_viewmodel.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(screenWidth(context), 68),
                  backgroundColor: AppColors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )),
              child: Text(
                StringConsts.continueWatch.toUpperCase(),
                style: GoogleFonts.manrope(
                  color: AppColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
