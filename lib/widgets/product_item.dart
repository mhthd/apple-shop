import 'package:apple_shop/constants/custom_colors.dart';
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
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 124,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: itemImage()),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child: itemName()),
          itemPrice()
        ],
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
        Positioned(
          bottom: 0,
          left: 10,
          child: Container(
            height: 15,
            width: 25,
            decoration: const BoxDecoration(
              color: CustomColors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(7.5),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '%',
                  style: TextStyle(
                      fontSize: 9, fontFamily: 'GB', color: Colors.white),
                ),
                Text(
                  '۳',
                  style: TextStyle(
                      fontSize: 9, fontFamily: 'SB', color: Colors.white),
                ),
              ],
            ),
          ),
        ),
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
