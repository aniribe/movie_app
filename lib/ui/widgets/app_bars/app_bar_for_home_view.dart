import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';

class AppBarForHomeView extends StatelessWidget {
  const AppBarForHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.bookmark,
            color: AppColors.red,
            size: 25,
          ),
          Icon(
            Icons.airplay_rounded,
            color: AppColors.red,
            size: 25,
          ),
        ],
      ),
    );
  }
}
