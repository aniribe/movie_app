import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/home/components/play_now_section.dart';

import '../../../../consts/app_colors.dart';
import '../../../../model/movies_carousel_item.dart';
import '../../../ui_utils/ui_helper.dart';
import 'movie_title.dart';
import 'new_season_title.dart';

class CarouselItem extends StatelessWidget {
  final MoviesCarouselItem carouselItem;

  const CarouselItem({
    super.key,
    required this.carouselItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(carouselItem.image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(35),
        color: AppColors.red,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(10),
          const NewSeasonTitle(),
          const Spacer(flex: 4),
          const MovieTitle(),
          const Spacer(flex: 1),
          PlayNowSection(carouselItem: carouselItem),
        ],
      ),
    );
  }
}
