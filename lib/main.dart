import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/screens/category_screen.dart';
import 'package:apple_shop/screens/home_screen.dart';
import 'package:apple_shop/screens/best_seller_products_screen.dart';
import 'package:apple_shop/screens/profile_screen.dart';
import 'package:apple_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';

import 'widgets/banner_slider.dart';
import 'widgets/category_item.dart';

void main() {
  runApp(const AppleShop());
}

class AppleShop extends StatelessWidget {
  const AppleShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BestSellerProductsScreen(),
    );
  }
}
