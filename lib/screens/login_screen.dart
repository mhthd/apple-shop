import 'package:apple_shop/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _usernameInputController =
      TextEditingController(text: '');
  final TextEditingController _passwordInputController =
      TextEditingController(text: '');

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
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          controller: _usernameInputController,
                          decoration: InputDecoration(
                            labelText: 'نام کاربری',
                            labelStyle: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'sm',
                                fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: CustomColors.blue,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          controller: _passwordInputController,
                          decoration: InputDecoration(
                            labelText: 'رمز عبور',
                            labelStyle: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'sm',
                                fontSize: 15),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: CustomColors.blue,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('ورود به حساب کاربری'),
                      ),
                      const SizedBox(
                        height: 35.0,
                      ),
                      const Text(''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
