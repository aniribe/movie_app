import 'package:flutter/material.dart';

import '../../../widgets/icon_button.dart';

class BackButtonRow extends StatelessWidget {
  final VoidCallback onPressed;

  const BackButtonRow({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppIconButton(
          icon: Icons.arrow_back_ios_rounded,
          onPressed: onPressed,
        ),
        AppIconButton(
          icon: Icons.ios_share,
          onPressed: () {},
        )
      ],
    );
  }
}
