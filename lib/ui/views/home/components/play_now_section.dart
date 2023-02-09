import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/home/components/play_now_button.dart';
import 'package:movie_app/ui/views/home/components/still_watching_section.dart';

import '../../../../model/movies_carousel_item.dart';

class PlayNowSection extends StatelessWidget {
  final MoviesCarouselItem carouselItem;

  const PlayNowSection({
    super.key,
    required this.carouselItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PlayNowButton(),
        StillWatchingSection(carouselItem: carouselItem),
      ],
    );
  }
}
