import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/model/home_banner.dart';
import 'package:apple_shop/widgets/cached_image.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatelessWidget {
  List<HomeBanner> bannersList;
  BannerSlider(
    this.bannersList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
        viewportFraction: 0.83, initialPage: bannersList.length - 1);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 177,
          child: PageView.builder(
              itemCount: bannersList.length,
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
                    child: CachedImage(
                      imageUrl: bannersList[index].thumbnail,
                      radius: 20,
                    ),
                  ),
                );
              }),
        ),
        Positioned(
          bottom: 8,
          child: SmoothPageIndicator(
            controller: pageController,
            count: bannersList.length,
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
