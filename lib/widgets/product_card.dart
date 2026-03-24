import 'package:flutter/material.dart';
import 'product_image.dart';
import 'product_info.dart';
import 'buy_button.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String imageUrl;
  final VoidCallback? onTap;
  final VoidCallback? onBuy;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.onTap,
    this.onBuy,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black12,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width:300),
            ProductImage(imageUrl: imageUrl),
            const SizedBox(height: 8),
            ProductInfo(title: title, price: price),
            const SizedBox(height: 8),
            BuyButton(onBuy: onBuy),
          ],
        ),
      ),
    );
  }
}
