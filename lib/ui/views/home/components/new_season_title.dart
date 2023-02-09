import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';
import '../../../../consts/string_consts.dart';

class NewSeasonTitle extends StatelessWidget {
  const NewSeasonTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConsts.newSeason,
      style: GoogleFonts.manrope(
        color: AppColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}
