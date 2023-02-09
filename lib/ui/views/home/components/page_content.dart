import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/home/components/series_carousel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../consts/app_colors.dart';
import '../../../ui_utils/ui_helper.dart';
import '../../../widgets/app_bars/app_bar_for_home_view.dart';
import '../home_viewmodel.dart';

class PageContent extends StatelessWidget {
  final HomeViewModel model;
  final PageController controller;

  const PageContent({
    super.key,
    required this.model,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(15),
        const AppBarForHomeView(),
        verticalSpace(30),
        SeriesCarousel(
          controller: controller,
          carouselMovies: model.carouselMovies,
        ),
        verticalSpace(20),
        SmoothPageIndicator(
          controller: controller,
          count: model.carouselMovies.length,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.red,
            dotColor: AppColors.grey.withOpacity(0.5),
            dotHeight: 6,
            dotWidth: 6,
            spacing: 8,
          ),
        ),
      ],
    );
  }
}
