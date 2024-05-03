import 'package:apple_shop/constants/custom_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/banner_slider.dart';

void main() {
  runApp(const AppleShop());
}

class AppleShop extends StatelessWidget {
  const AppleShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CustomColors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
                  child: appBar(),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                    padding: EdgeInsets.only(top: 32), child: BannerSlider()),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 32, right: 44, left: 44),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'دسته بندی',
                        style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: CustomColors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 82,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 34),
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return const CategoryItem();
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container appBar() {
    return Container(
      height: 46,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Image.asset('assets/images/icon_apple_blue.png'),
            const Spacer(),
            const Text(
              'جستجوی محصولات',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'SB', color: CustomColors.grey),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/icon_search.png'),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: const ShapeDecoration(
              color: Colors.blue,
              shadows: [
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(0.0, 15),
                  blurRadius: 25,
                  spreadRadius: -18,
                )
              ],
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),
              ),
            ),
            child: const Icon(
              Icons.ads_click,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'همه',
            style:
                TextStyle(fontFamily: 'SB', fontSize: 12, color: Colors.black),
          )
        ],
      ),
    );
  }
}
