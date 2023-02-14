import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';

class MovieTitle extends StatelessWidget {
  final String title;


  const MovieTitle({
    super.key,
    required this.title,
  });


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.manrope(
        color: AppColors.white,
        fontSize: 50,
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.center,
    );
  }
}