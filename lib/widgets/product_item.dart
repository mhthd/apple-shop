import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/off_tag.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColors.blue,
            offset: Offset(0.0, 15),
            blurRadius: 20,
            spreadRadius: -22,
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 124,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: itemImage(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child: itemName(),
            ),
            itemPrice(),
          ],
        ),
      ),
    );
  }

  Widget itemImage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Image.asset('assets/images/iphone.png'),
        Positioned(
          top: 0,
          right: 10,
          child: Image.asset('assets/images/active_fav_product.png'),
        ),
        const Positioned(
            bottom: 0,
            left: 10,
            child: OffTag(
              percent: 5,
            )),
      ],
    );
  }

  Widget itemName() {
    return const Text(
      'آیفون ۱۳ پرومکس',
      style: TextStyle(fontSize: 14, fontFamily: 'SB', color: Colors.black),
    );
  }

  Widget itemPrice() {
    return Container(
      height: 53,
      decoration: const BoxDecoration(
        color: CustomColors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            const Text(
              'تومان',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'SB', fontSize: 12),
            ),
            const SizedBox(
              width: 5,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '۴۶٬۰۰۰٬۰۰۰',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SB',
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough),
                ),
                Text(
                  '۴۵٬۳۵۰٬۰۰۰',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'SB', fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: 20,
              child: Image.asset('assets/images/icon_right_arrow_cricle.png'),
            ),
          ],
        ),
      ),
    );
  }
}
