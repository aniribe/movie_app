import 'package:movie_app/consts/string_consts.dart';

import '../consts/app_images.dart';
import '../model/movie.dart';
import '../model/movies_carousel_item.dart';

class MocLists {
  static List<Movie> movies = [
    Movie(
      image:
          "https://upload.wikimedia.org/wikipedia/id/5/54/The_Batman_%28film%29_poster.jpeg",
      title: "The Batman",
      genre: "Action",
      age: "13+",
      rating: "10.0",
    ),
    Movie(
      image:
          "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/08/03/1363211994.jpg",
      title: "Money Heist",
      genre: "Crime",
      age: "18+",
      rating: "8.2",
    ),
    Movie(
      image:
          "https://awsimages.detik.net.id/community/media/visual/2022/05/25/film-interstellar-1_43.png?w=700&q=90",
      title: "Interstellar",
      genre: "Adventure",
      age: "R",
      rating: "8.6",
    ),
    Movie(
      image:
          "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/2629bad87568290e63a1f62e81fd2d9bf3703268cdbc6ff38a02a6c5de0f0e29._RI_V_TTW_.jpg",
      title: "Avengers: Infinity Wa",
      genre: "Sci:Fi",
      age: "13+",
      rating: "8.4",
    ),
    Movie(
      image:
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/e60d59103015959.5f43f7d599ad9.jpg",
      title: "Peaky Blinders",
      genre: "Crime",
      age: "18+",
      rating: "8.8",
    ),
  ];

  static List<MoviesCarouselItem> carouselMovies = [
    MoviesCarouselItem(
      image: AppImages.strangerThingsVol1,
      title: StringConsts.strangerThings,
      watcherAmount: 12,
    ),
    MoviesCarouselItem(
      image: AppImages.strangerThingsVol2,
      title: StringConsts.strangerThings,
      watcherAmount: 15,
    ),
    MoviesCarouselItem(
      image: AppImages.strangerThingsVol3,
      title: StringConsts.strangerThings,
      watcherAmount: 23,
    ),
    MoviesCarouselItem(
      image: AppImages.strangerThingsVol4,
      title: StringConsts.strangerThings,
      watcherAmount: 0,
    ),
    MoviesCarouselItem(
      image: AppImages.strangerThingsVol5,
      title: StringConsts.strangerThings,
      watcherAmount: 2,
    ),
  ];

  static List<String> avatars = [
    AppImages.avatar1,
    AppImages.avatar2,
    AppImages.avatar3,
  ];
}
