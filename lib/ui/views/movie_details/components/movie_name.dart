import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';

class MovieTitle extends StatelessWidget {
  final String name;

  const MovieTitle({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.manrope(
        color: AppColors.white,
        fontSize: 50,
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.center,
    );
  }
}
