import 'dart:ui';
import 'package:apple_shop/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class OffTag extends StatelessWidget {
  const OffTag({super.key, required this.percent});

  final int percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 25,
      decoration: const BoxDecoration(
        color: CustomColors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(7.5),
        ),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: '%',
            style: const TextStyle(
                fontSize: 10, fontFamily: 'GB', color: Colors.white),
            children: [
              TextSpan(
                text: '$percent',
                style: const TextStyle(fontFamily: 'sb'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
