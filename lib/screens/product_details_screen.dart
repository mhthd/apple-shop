import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

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
                          padding: EdgeInsets.symmetric(horizontal: 35),
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
            )
          ],
        ),
      ),
    );
  }
}
