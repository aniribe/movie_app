import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';

class MovieDetailsTitle extends StatelessWidget {
  final String title;

  const MovieDetailsTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.manrope(
          color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w600),
    );
  }
}
