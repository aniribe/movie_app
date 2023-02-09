import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Stranger',
          style: GoogleFonts.manrope(
            color: AppColors.white,
            fontSize: 26,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'Things',
          style: GoogleFonts.manrope(
            color: AppColors.white,
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
