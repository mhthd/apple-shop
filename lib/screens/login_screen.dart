import 'package:apple_shop/bloc/auth_bloc.dart';
import 'package:apple_shop/bloc/auth_event.dart';
import 'package:apple_shop/bloc/auth_state.dart';
import 'package:apple_shop/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          if (state is AuthInitialState) {
                            return ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<AuthBloc>(context).add(
                                  AuthLoginRequestEvent(
                                      _usernameInputController.text,
                                      _passwordInputController.text),
                                );
                              },
                              child: const Text('ورود به حساب کاربری'),
                            );
                          }
                          if (state is AuthLoadingState) {
                            return const CircularProgressIndicator();
                          }
                          if (state is AuthResponseState) {
                            Text text = const Text('');
                            state.response.fold(
                              (l) => text = Text(l),
                              (r) => text = Text(r),
                            );
                            return text;
                          }
                          return const Text('unkown error!');
                        },
                      )
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
