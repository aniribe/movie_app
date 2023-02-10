import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/ui/widgets/clasmorphism_container.dart';

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
    return GlassmorphismContainer(
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: AppColors.white,
              size: 27,
            )));
  }
}
