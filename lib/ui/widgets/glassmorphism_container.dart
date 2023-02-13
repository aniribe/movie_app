import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../consts/app_colors.dart';

class GlassmorphismContainer extends StatelessWidget {
  final Widget child;

  const GlassmorphismContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                AppColors.white.withOpacity(0.4),
                AppColors.darkPurple.withOpacity(0.7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
