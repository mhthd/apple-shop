import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  String? imageUrl;
  double radius;
  CachedImage({super.key, required this.imageUrl, this.radius = 0});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: CachedNetworkImage(
        imageUrl: imageUrl ??
            'https://startflutter.ir/api/files/equwrpwnez9pvim/8c68aeyyf020kiq/rectangle_65_UESoaB4Y7P.png',
        placeholder: (context, url) => Container(
          color: Colors.grey,
        ),
        errorWidget: (context, url, error) => Container(
          color: Colors.red[400],
        ),
      ),
    );
  }
}
