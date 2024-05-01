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
