import 'package:flutter/material.dart';

import '../../../../model/movies_carousel_item.dart';
import '../../../ui_utils/ui_helper.dart';
import 'carousel_item.dart';

class SeriesCarousel extends StatelessWidget {
  final PageController controller;
  final List<MoviesCarouselItem> carouselMovies;

  const SeriesCarousel({
    super.key,
    required this.controller,
    required this.carouselMovies,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: screenWidth(context),
        height: 340,
        child: PageView(
          controller: controller,
          children: carouselMovies
              .map((item) => CarouselItem(carouselItem: item))
              .toList(),
        ),
      ),
    );
  }
}
