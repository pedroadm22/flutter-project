import 'package:flutter/material.dart';


class ProductImage extends StatelessWidget {
  final String imageUrl;

  const ProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        imageUrl,
        height: 120,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}