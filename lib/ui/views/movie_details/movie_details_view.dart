import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/consts/app_colors.dart';
import 'package:movie_app/moc_data/lists.dart';
import 'package:movie_app/ui/ui_utils/ui_helper.dart';
import 'package:movie_app/ui/widgets/clasmorphism_container.dart';
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
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight(context) * 0.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          MocLists.movies[viewModel.movieIndex as int].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: screenHeight(context) * 0.8,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          AppColors.black.withOpacity(0),
                          AppColors.black.withOpacity(0.95),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.65, 1]),
                  ),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // verticalSpace(10),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppIconButton(
                                icon: Icons.arrow_back_ios_rounded,
                                onPressed: viewModel.onBackButtonPressed,
                              ),
                              AppIconButton(
                                icon: Icons.ios_share,
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Column(
                            children: [
                              Text(
                                MocLists
                                    .movies[viewModel.movieIndex as int].title,
                                style: GoogleFonts.manrope(
                                  color: AppColors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              verticalSpace(10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GlassmorphismContainer(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      MocLists
                                          .movies[viewModel.movieIndex as int]
                                          .age,
                                      style: GoogleFonts.manrope(
                                          color: AppColors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                                  horizontalSpace(10),
                                  GlassmorphismContainer(
                                      child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    child: Text(
                                      MocLists
                                          .movies[viewModel.movieIndex as int]
                                          .genre,
                                      style: GoogleFonts.manrope(
                                          color: AppColors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                                  horizontalSpace(10),
                                  GlassmorphismContainer(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: AppColors.yellow,
                                        ),
                                        horizontalSpace(5),
                                        Text(
                                          MocLists
                                              .movies[
                                                  viewModel.movieIndex as int]
                                              .rating,
                                          style: GoogleFonts.manrope(
                                              color: AppColors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  @override
  MovieDetailsViewModel viewModelBuilder(BuildContext context) =>
      MovieDetailsViewModel();
}
