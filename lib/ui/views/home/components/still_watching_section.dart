import 'package:flutter/material.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';
import '../../../../moc_data/lists.dart';
import '../../../../model/movies_carousel_item.dart';
import '../../../ui_utils/ui_helper.dart';

class StillWatchingSection extends StatelessWidget {
  final MoviesCarouselItem carouselItem;


  const StillWatchingSection({
    super.key,
    required this.carouselItem,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringConsts.stillWatching,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 12,
          ),
        ),
        verticalSpace(7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 28,
              width: 86,
              child: Stack(
                children: List.generate(
                    carouselItem.watcherAmount <= 3
                        ? carouselItem.watcherAmount
                        : 3,
                        (index) =>
                        Positioned(
                            left: index * 25,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage(MocLists.avatars[index]),
                              radius: 14,
                            ))),
              ),
            ),
            if (carouselItem.watcherAmount > 3)
              Text(
                '+${carouselItem.watcherAmount - 3}',
                style: TextStyle(
                    color: AppColors.white.withOpacity(0.7), fontSize: 14),
              )
          ],
        ),
      ],
    );
  }
}