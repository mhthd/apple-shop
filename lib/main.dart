import 'package:apple_shop/constants/custom_colors.dart';
import 'package:flutter/material.dart';

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
          child: Padding(
            padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
            child: Container(
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
                          fontSize: 16,
                          fontFamily: 'SB',
                          color: CustomColors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/images/icon_search.png'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
