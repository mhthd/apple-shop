import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:apple_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';

class BestSellerProductsScreen extends StatelessWidget {
  const BestSellerProductsScreen({super.key});

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
                      Image.asset('assets/images/icon_ghif.png'),
                      const Text(
                        'پر فروش ترین ها',
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
            SliverPadding(
              padding: const EdgeInsets.only(left: 44, right: 44, top: 32),
              sliver: SliverGrid.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio:
                      ((MediaQuery.of(context).size.width - (44 + 44 + 20)) /
                              2) /
                          216,
                ),
                itemBuilder: (context, index) {
                  return const ProductItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
