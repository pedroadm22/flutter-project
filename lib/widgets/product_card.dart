import 'package:flutter/material.dart';
import 'package:first_app/models/Product.dart';
import 'package:first_app/widgets/product_image.dart';
import 'package:first_app/widgets/product_info.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductImage(imageUrl: product.imagePath),
        const SizedBox(height: 8),
        ProductInfo(
          title: product.title,
          price: product.price
        ),
      ],
    );
  }
}
