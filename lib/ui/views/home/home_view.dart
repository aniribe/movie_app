import 'package:flutter/material.dart';
import 'package:movie_app/consts/app_colors.dart';
import 'package:movie_app/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'components/page_content.dart';

class HomeView extends StackedView<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget builder(
          BuildContext context, HomeViewModel viewModel, Widget? child) =>
      Scaffold(
        backgroundColor: AppColors.black,
        body: SafeArea(
          child: PageContent(
            controller: _controller,
            model: viewModel,
          ),
        ),
      );

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) => viewModel.onInit();
}
