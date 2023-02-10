import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';

class MovieTitle extends StatelessWidget {
  final String movieTitle;

  const MovieTitle({
    super.key,
    required this.movieTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Text(
        movieTitle,
        style: GoogleFonts.manrope(
          color: AppColors.white,
          fontSize: 14,
        ),
        softWrap: true,
      ),
    );
  }
}