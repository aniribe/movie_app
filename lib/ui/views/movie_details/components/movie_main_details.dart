import 'package:flutter/cupertino.dart';

import '../../../../moc_data/lists.dart';
import '../movie_details_viewmodel.dart';
import 'movie_data_container.dart';
import 'poster_container.dart';

class MovieMainDetails extends StatelessWidget {
  const MovieMainDetails({
    super.key,
    required this.viewModel,
  });

  final MovieDetailsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PosterContainer(
            image: MocLists.movies[viewModel.movieIndex as int].image),
        MovieDataContainer(
          movieIndex: viewModel.movieIndex as int,
          onBackButtonPressed: viewModel.onBackButtonPressed,
        ),
      ],
    );
  }
}
