import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/consts/app_colors.dart';
import 'package:movie_app/ui/views/home/home_view.dart';
import 'package:movie_app/ui/views/movie_details/movie_details_view.dart';
import 'package:stacked/stacked.dart';

import '../serach/search_view.dart';
import 'general_viewmodel.dart';

class GeneralView extends StackedView<GeneralViewModel> {
  const GeneralView({super.key});

  @override
  Widget builder(
          BuildContext context, GeneralViewModel viewModel, Widget? child) =>
      Scaffold(
        backgroundColor: AppColors.black,
        bottomNavigationBar: CustomNavigationBar(
          currentIndex: viewModel.currentIndex,
          // currentIndex: viewModel.activeViewIndex,
          onTap: (index) => viewModel.onNavigationIconTaped(index),
          selectedColor: AppColors.red,
          unSelectedColor: AppColors.grey,
          backgroundColor: AppColors.black,
          strokeColor: AppColors.grey,
          items: [
            CustomNavigationBarItem(icon: const Icon(Icons.home_filled)),
            CustomNavigationBarItem(icon: const Icon(Icons.search_rounded)),
            CustomNavigationBarItem(
                icon: const Icon(Icons.play_circle_outline_rounded)),
            CustomNavigationBarItem(
                icon: const Icon(Icons.person_outline_outlined)),
          ],
        ),
        body: getViewForIndex(viewModel.activeViewIndex),
      );

  @override
  GeneralViewModel viewModelBuilder(BuildContext context) => GeneralViewModel();

  @override
  void onViewModelReady(GeneralViewModel viewModel) => viewModel.onInit();
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return HomeView();
    case 1:
      return const SearchView();
    case 2:
      return HomeView();
    case 3:
      return HomeView();
    case 4:
      return const MovieDetailsView();

    default:
      return HomeView();
  }
}
