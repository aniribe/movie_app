import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';
import '../../../../moc_data/lists.dart';

class MovieNameAndDurationRow extends StatelessWidget {
  final String movieName;
  final String duration;

  const MovieNameAndDurationRow({
    super.key,
    required this.movieName,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          movieName,
          style: GoogleFonts.manrope(color: AppColors.white, fontSize: 17),
        ),
        Text(
          duration,
          style: GoogleFonts.manrope(
              color: AppColors.white.withOpacity(0.7), fontSize: 14),
        )
      ],
    );
  }
}
