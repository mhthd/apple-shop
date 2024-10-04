import 'dart:ui';
import 'package:apple_shop/bloc/auth_bloc.dart';
import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/screens/card_screen.dart';
import 'package:apple_shop/screens/category_screen.dart';
import 'package:apple_shop/screens/home_screen.dart';
import 'package:apple_shop/screens/login_screen.dart';
import 'package:apple_shop/screens/profile_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

void main() async {
  await getItInit();
  runApp(const AppleShop());
}

class AppleShop extends StatefulWidget {
  const AppleShop({super.key});

  @override
  State<AppleShop> createState() => _AppleShopState();
}

int selectedBottomNavogationIndex = 3;

class _AppleShopState extends State<AppleShop> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // body: BlocProvider<AuthBloc>(
        //   create: (context) => AuthBloc(),
        //   child: LoginScreen(),
        // ),

        body: IndexedStack(
          index: selectedBottomNavogationIndex,
          children: _getScreens(),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: BottomNavigationBar(
              currentIndex: selectedBottomNavogationIndex,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              onTap: (index) {
                setState(() {
                  selectedBottomNavogationIndex = index;
                });
              },
              items: [
                customBottomNavigationBarItem(
                  label: 'حساب کاربری',
                  iconImage: 'icon_profile.png',
                  activationIconImage: 'icon_profile_active.png',
                ),
                bottomNavigationBasketItem(),
                customBottomNavigationBarItem(
                  label: 'دسته بندی',
                  iconImage: 'icon_category.png',
                  activationIconImage: 'icon_category_active.png',
                ),
                customBottomNavigationBarItem(
                  label: 'خانه',
                  iconImage: 'icon_home.png',
                  activationIconImage: 'icon_home_active.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBasketItem() {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 10),
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/icon_basket.png'),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'سبد خرید',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 10,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                  color: CustomColors.red, shape: BoxShape.circle),
              child: const Center(
                child: Text(
                  '۳',
                  style: TextStyle(
                      fontFamily: 'sb', color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 10),
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Column(
              children: [
                Image.asset('assets/images/icon_basket_active.png'),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'سبد خرید',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 10,
                    color: CustomColors.blue,
                  ),
                )
              ],
            ),
            Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                  color: CustomColors.red, shape: BoxShape.circle),
              child: const Center(
                child: Text(
                  '۳',
                  style: TextStyle(
                      fontFamily: 'sb', color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
      label: 'سبد خرید',
    );
  }

  BottomNavigationBarItem customBottomNavigationBarItem({
    required String label,
    required String iconImage,
    required String activationIconImage,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/$iconImage'),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'sb',
                fontSize: 10,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 10),
        child: Column(
          children: [
            Image.asset('assets/images/$activationIconImage'),
            const SizedBox(
              height: 5,
            ),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'sb',
                fontSize: 10,
                color: CustomColors.blue,
              ),
            )
          ],
        ),
      ),
      label: label,
    );
  }

  List<Widget> _getScreens() {
    return const [
      ProfileScreen(),
      CardScreen(),
      CategoryScreen(),
      HomeScreen(),
    ];
  }
}
