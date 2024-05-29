import 'dart:ui';

import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: CustomAppBar(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/icon_apple_blue.png'),
                      const Text(
                        'آیفون',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SB',
                            color: CustomColors.blue),
                      ),
                      Image.asset('assets/images/icon_back.png'),
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 32, bottom: 20),
                child: Center(
                  child: Text(
                    'آیفون SE 2022',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'sb',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 284,
                margin: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 10),
                      color: CustomColors.grey,
                      blurRadius: 30,
                      spreadRadius: -25,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        const SizedBox(
                          height: 166,
                          width: double.infinity,
                        ),
                        Positioned(
                          top: 18,
                          child: SizedBox(
                            height: 148,
                            child: Image.asset(
                              'assets/images/iphone.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Row(
                            children: [
                              Image.asset('assets/images/icon_star.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '4.6',
                                style: TextStyle(
                                  fontFamily: 'SB',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Image.asset(
                              'assets/images/icon_favorite_deactive.png'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, bottom: 30),
                      child: SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            reverse: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 70,
                                width: 70,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: CustomColors.grey),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 14),
                                  child:
                                      Image.asset('assets/images/iphone.png'),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 44),
                    child: Text(
                      'انتخاب رنگ',
                      style: TextStyle(
                        fontFamily: 'sb',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 26,
                    child: ListView.builder(
                      itemCount: 3,
                      reverse: true,
                      padding: const EdgeInsets.symmetric(horizontal: 39),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 26,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 44),
                    child: Text(
                      'انتخاب حافظه داخلی',
                      style: TextStyle(
                        fontFamily: 'sb',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 26,
                    child: ListView.builder(
                      itemCount: 3,
                      reverse: true,
                      padding: const EdgeInsets.symmetric(horizontal: 39),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 74,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 1, color: CustomColors.grey),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              '128',
                              style: TextStyle(fontFamily: 'sb', fontSize: 12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 46,
                margin: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: CustomColors.grey),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'مشاهده',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12,
                          color: CustomColors.blue,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        ':مشخصات فنی',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 46,
                margin: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: CustomColors.grey),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'مشاهده',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12,
                          color: CustomColors.blue,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        ':توضیحات محصول',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 46,
                margin: const EdgeInsets.only(left: 44, right: 44),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: CustomColors.grey),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'مشاهده',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12,
                          color: CustomColors.blue,
                        ),
                      ),
                      const Spacer(),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 18,
                            child: Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 36,
                            child: Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 54,
                            child: Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 72,
                            child: Container(
                              width: 26,
                              height: 26,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  '+۱۰',
                                  style: TextStyle(
                                    fontFamily: 'sb',
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        ':نظرات کاربران ',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 38, bottom: 32, left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PriceTagButton(),
                    Spacer(),
                    AddToBasketButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 47,
          width: 140,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: CustomColors.blue),
        ),
        Positioned(
          top: 5,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: Container(
                height: 53,
                width: 160,
                decoration: const BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          CustomColors.lightGrey,
                          CustomColors.lightGrey,
                          CustomColors.lightGrey
                        ]),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                    opacity: 0.1,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/grain.png',
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'افزودن به سبد خرید',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'sb', fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PriceTagButton extends StatelessWidget {
  const PriceTagButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 47,
          width: 140,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: CustomColors.green),
        ),
        Positioned(
          top: 5,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: Container(
                height: 53,
                width: 160,
                decoration: const BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          CustomColors.lightGrey,
                          CustomColors.lightGrey,
                          CustomColors.lightGrey
                        ]),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                    opacity: 0.1,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/grain.png',
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const Text(
                        'تومان',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SB',
                            fontSize: 12),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '۴۶٬۰۰۰٬۰۰۰',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SB',
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text(
                            '۴۵٬۳۵۰٬۰۰۰',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SB',
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 15,
                        width: 25,
                        decoration: const BoxDecoration(
                          color: CustomColors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(7.5),
                          ),
                        ),
                        child: Center(
                          child: RichText(
                            text: const TextSpan(
                              text: '%',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'GB',
                                  color: Colors.white),
                              children: [
                                TextSpan(
                                  text: '۵',
                                  style: TextStyle(fontFamily: 'sb'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
