import 'package:apple_shop/model/category.dart';
import 'package:apple_shop/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    int hexColor = int.parse('ff${category.color}', radix: 16);
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
              decoration: ShapeDecoration(
                color: Color(hexColor),
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
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CachedImage(imageUrl: category.icon),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              category.title ?? 'محصولات',
              style: TextStyle(
                  fontFamily: 'SB', fontSize: 12, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
