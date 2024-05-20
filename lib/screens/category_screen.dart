import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/category_item.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: CustomAppBar(
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          const Text(
                            'دسته بندی',
                            style: TextStyle(
                              color: CustomColors.blue,
                              fontFamily: 'SB',
                              fontSize: 16,
                            ),
                          ),
                          Positioned(
                            left: 15,
                            child: Image.asset(
                              'assets/images/icon_apple_blue.png',
                            ),
                          ),
                          const SizedBox(
                            height: double.infinity,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
                  top: 32, bottom: 21, left: 44, right: 44),
              sliver: SliverGrid.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (buildContext, index) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
