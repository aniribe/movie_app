import 'package:flutter/cupertino.dart';
import '../../../ui_utils/ui_helper.dart';

class PosterContainer extends StatelessWidget {
  final String image;

  const PosterContainer({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.72,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
