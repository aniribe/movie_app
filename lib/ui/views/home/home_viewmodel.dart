import 'package:stacked/stacked.dart';

import '../../../moc_data/lists.dart';
import '../../../model/movies_carousel_item.dart';

class HomeViewModel extends BaseViewModel {
  late List<MoviesCarouselItem> carouselMovies;

  void onInit() {
    initializeCarouselMovies();
  }

  void initializeCarouselMovies() => carouselMovies = MocLists.carouselMovies;
}
