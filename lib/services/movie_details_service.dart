import 'package:flutter/cupertino.dart';

class MovieDetailsService {
  ValueNotifier<bool?> movieDetailsChose = ValueNotifier(null);

  set setMovieDetailsChose(dynamic value) => movieDetailsChose.value = value;

  int? _chosenMovieIndex;

  set setChosenMovieIndex(int index) => _chosenMovieIndex = index;

  int? get movieIndex => _chosenMovieIndex;
}
