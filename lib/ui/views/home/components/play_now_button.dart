import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';
import '../../../ui_utils/ui_helper.dart';

class PlayNowButton extends StatelessWidget {
  const PlayNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.darkGrey.withOpacity(0.08),
          ),
          child: const Icon(
            Icons.play_arrow_rounded,
            color: AppColors.white,
            size: 30,
          ),
        ),
        horizontalSpace(10),
        Text(
          StringConsts.playNow,
          style: GoogleFonts.manrope(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
