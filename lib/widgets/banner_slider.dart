import 'package:apple_shop/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController =
        PageController(viewportFraction: 0.83, initialPage: 1);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 177,
          child: PageView.builder(
              itemCount: 3,
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 177,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/airpod pro.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }),
        ),
        Positioned(
          bottom: 8,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: const ExpandingDotsEffect(
                dotHeight: 5,
                dotWidth: 5,
                spacing: 2,
                expansionFactor: 5,
                dotColor: Colors.white,
                activeDotColor: CustomColors.blue),
          ),
        )
      ],
    );
  }
}
