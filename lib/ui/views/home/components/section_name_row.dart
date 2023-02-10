import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';

class SectionNameRow extends StatelessWidget {
  const SectionNameRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            StringConsts.continueWatching,
            style: GoogleFonts.manrope(
              color: AppColors.white,
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 23,
            width: 23,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: AppColors.red.withOpacity(0.6),
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
