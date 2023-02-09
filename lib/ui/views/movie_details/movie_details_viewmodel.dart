import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/movie_details_service.dart';

class MovieDetailsViewModel extends BaseViewModel {
  final _movieDetailsService = locator<MovieDetailsService>();
  final _navigationService = locator<NavigationService>();

  int? get movieIndex => _movieDetailsService.movieIndex;

  @override
  void dispose() {
    print('HERE');
    setMovieDetailsChose(null);
    super.dispose();
  }

  void setMovieDetailsChose(dynamic value) =>
      _movieDetailsService.setMovieDetailsChose = value;

  void onBackButtonPressed() {
    setMovieDetailsChose(false);
  }
}
