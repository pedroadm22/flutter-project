import 'package:flutter/material.dart';
import 'package:first_app/models/Product.dart';
import 'package:first_app/widgets/product_image.dart';
import 'package:first_app/widgets/product_info.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(imageUrl: product.imagePath),

          Padding(
            padding: const EdgeInsets.all(8),
            child: ProductInfo(
              title: product.title,
              price: product.price,
            ),
          ),
        ],
      ),
    );
  }
}