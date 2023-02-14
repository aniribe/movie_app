import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../consts/app_colors.dart';

class GlassmorphismContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const GlassmorphismContainer({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: padding,
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
