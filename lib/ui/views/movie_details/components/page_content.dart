import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/ui/views/movie_details/components/poster_container.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';
import '../../../../moc_data/lists.dart';
import '../../../ui_utils/ui_helper.dart';
import '../../../widgets/glassmorphism_container.dart';
import '../../../widgets/icon_button.dart';
import '../movie_details_viewmodel.dart';
import 'movie_data_container.dart';

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
          Stack(
            children: [
              PosterContainer(
                  image: MocLists.movies[viewModel.movieIndex as int].image),
              MovieDataContainer(viewModel: viewModel),
            ],
          ),
          verticalSpace(25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MocLists.movies[viewModel.movieIndex as int].title,
                      style: GoogleFonts.manrope(
                          color: AppColors.white, fontSize: 17),
                    ),
                    Text(
                      '${MocLists.movies[viewModel.movieIndex as int].time} min',
                      style: GoogleFonts.manrope(
                          color: AppColors.white.withOpacity(0.7),
                          fontSize: 14),
                    )
                  ],
                ),
                verticalSpace(20),
                LinearProgressIndicator(
                  backgroundColor: AppColors.darkGrey.withOpacity(0.5),
                  color: AppColors.red,
                  value:
                      MocLists.movies[viewModel.movieIndex as int].watchedValue,
                ),
              ],
            ),
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
