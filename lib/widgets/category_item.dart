import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: const ShapeDecoration(
                color: Colors.blue,
                shadows: [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(0.0, 15),
                    blurRadius: 25,
                    spreadRadius: -18,
                  )
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(45),
                  ),
                ),
              ),
              child: const Icon(
                Icons.ads_click,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'همه',
              style: TextStyle(
                  fontFamily: 'SB', fontSize: 12, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
