import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/consts/app_colors.dart';
import 'package:movie_app/ui/ui_utils/ui_helper.dart';
import 'package:movie_app/ui/views/home/home_viewmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget builder(
          BuildContext context, HomeViewModel viewModel, Widget? child) =>
      Scaffold(
        backgroundColor: AppColors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                verticalSpace(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.bookmark,
                      color: AppColors.red,
                      size: 25,
                    ),
                    Icon(
                      Icons.airplay_rounded,
                      color: AppColors.red,
                      size: 25,
                    ),
                  ],
                ),
                verticalSpace(30),
                Container(
                  width: screenWidth(context),
                  height: 340,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: PageView(
                    controller: _controller,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://www.cultura.id/wp-content/uploads/2022/06/stranger-things-season-4-vol-1-review.webp'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.red,
                        ),
                        child: Column(
                          children: [
                            verticalSpace(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'NEW SEASON',
                                  style: GoogleFonts.manrope(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            verticalSpace(50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Stranger',
                                  style: GoogleFonts.manrope(
                                    color: AppColors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigoAccent,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(20),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: ExpandingDotsEffect(
                    activeDotColor: AppColors.red,
                    dotColor: AppColors.grey.withOpacity(0.5),
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
