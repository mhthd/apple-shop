import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/category_item.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        const Text(
                          'حساب کاربری',
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
            const Padding(
              padding: EdgeInsets.only(top: 32, bottom: 20),
              child: Column(
                children: [
                  Text(
                    'محمد جواد هاشمی',
                    style: TextStyle(fontFamily: 'SB', fontSize: 16),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '09123456789',
                    style: TextStyle(fontSize: 10, color: CustomColors.grey),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 44),
              child: Wrap(
                spacing: 6,
                runSpacing: 20,
                alignment: WrapAlignment.end,
                children: [
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                ],
              ),
            ),
            const Spacer(),
            const Column(
              children: [
                Text(
                  'اپل شاپ',
                  style: TextStyle(
                      fontFamily: 'SB', fontSize: 10, color: CustomColors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'V-1.0.00',
                  style: TextStyle(fontSize: 10, color: CustomColors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Instagram.com/Mojavad-dev',
                  style: TextStyle(
                      fontFamily: 'SB', fontSize: 10, color: CustomColors.grey),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
