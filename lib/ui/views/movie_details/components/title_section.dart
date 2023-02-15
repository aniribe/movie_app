import 'package:flutter/cupertino.dart';
import 'package:movie_app/ui/views/movie_details/components/rating_row.dart';

import '../../../ui_utils/ui_helper.dart';
import 'movie_name.dart';

class TitleSection extends StatelessWidget {
  final String movieName;
  final String age;
  final String genre;
  final String rating;

  const TitleSection({
    super.key,
    required this.rating,
    required this.genre,
    required this.age,
    required this.movieName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieTitle(name: movieName),
        verticalSpace(10),
        RatingRow(
          age: age,
          genre: genre,
          rating: rating,
        ),
      ],
    );
  }
}
