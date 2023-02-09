import 'dart:ui';

import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

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
                AppColors.white.withOpacity(0.3),
                AppColors.darkPurple.withOpacity(0.5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: AppColors.white,
                size: 27,
              )),
        ),
      ),
    );
  }
}
