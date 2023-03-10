import 'package:flutter/material.dart';
import 'package:movie_app/ui/views/serach/search_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../consts/app_colors.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
          BuildContext context, SearchViewModel viewModel, Widget? child) =>
      Scaffold(
        backgroundColor: AppColors.black,
      );

  @override
  SearchViewModel viewModelBuilder(BuildContext context) => SearchViewModel();
}
