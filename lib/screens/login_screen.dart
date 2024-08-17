import 'package:apple_shop/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icon_application.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'اپل شاپ',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'sb'),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
