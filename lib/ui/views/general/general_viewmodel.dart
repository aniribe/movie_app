import 'package:flutter/cupertino.dart';
import 'package:movie_app/app/app.locator.dart';
import 'package:movie_app/consts/string_consts.dart';
import 'package:stacked/stacked.dart';

import '../../../services/movie_details_service.dart';

class GeneralViewModel extends IndexTrackingViewModel {
  final _movieDetailsService = locator<MovieDetailsService>();

  ValueNotifier get movieDetailsChose => _movieDetailsService.movieDetailsChose;

  int activeViewIndex = 0;

  void onInit() {
    addListenerForMovieDetailsChose();
  }

  void onNavigationIconTaped(int index) {
    setIndex(index);
    setActiveViewIndex(index);
    rebuildUi();
  }

  void setActiveViewIndex(int index) => activeViewIndex = index;

  void addListenerForMovieDetailsChose() {
    movieDetailsChose.addListener(() {
      if (movieDetailsChose.value == true) {
        setActiveViewIndex(StringConsts.movieDetailsViewIndex);
        rebuildUi();
      } else if (movieDetailsChose.value == false) {
        setActiveViewIndex(currentIndex);
        rebuildUi();
      }
    });
  }
}
