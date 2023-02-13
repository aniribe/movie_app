import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/movie_details_service.dart';

class MovieDetailsViewModel extends BaseViewModel {
  final _movieDetailsService = locator<MovieDetailsService>();

  int? get movieIndex => _movieDetailsService.movieIndex;

  @override
  void dispose() {
    setMovieDetailsChose(null);
    super.dispose();
  }

  void setMovieDetailsChose(dynamic value) =>
      _movieDetailsService.setMovieDetailsChose = value;

  void onBackButtonPressed() {
    setMovieDetailsChose(false);
  }
}
