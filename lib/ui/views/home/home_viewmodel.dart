import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../moc_data/lists.dart';
import '../../../model/movies_carousel_item.dart';
import '../../../services/movie_details_service.dart';

class HomeViewModel extends BaseViewModel {
  final _movieDetailsService = locator<MovieDetailsService>();

  late List<MoviesCarouselItem> carouselMovies;

  void onInit() {
    initializeCarouselMovies();
  }

  void initializeCarouselMovies() => carouselMovies = MocLists.carouselMovies;

  void onMoviePressed(int movieIndex) {
    setChosenMovieIndex(movieIndex);
    setMovieDetailsChose(true);
  }

  void setChosenMovieIndex(int movieIndex) =>
      _movieDetailsService.setChosenMovieIndex = movieIndex;

  void setMovieDetailsChose(bool value) =>
      _movieDetailsService.setMovieDetailsChose = value;
}
