import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../consts/app_colors.dart';
import '../../../../moc_data/lists.dart';
import '../../../ui_utils/ui_helper.dart';
import '../../../widgets/glassmorphism_container.dart';
import '../../../widgets/icon_button.dart';
import '../movie_details_viewmodel.dart';
import 'movie_data.dart';

class MovieDataContainer extends StatelessWidget {
  final MovieDetailsViewModel viewModel;

  const MovieDataContainer({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.72,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              AppColors.black.withOpacity(0),
              AppColors.black.withOpacity(0.95),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.65, 1]),
      ),
      child: MovieData(viewModel: viewModel),
    );
  }
}
