import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/models/Product.dart';
import 'package:project_app_ecommerce_kachau/controllers/product_controller.dart';
import 'package:project_app_ecommerce_kachau/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;
  final CartController controller;

  const ProductList({
    super.key,
    required this.products,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return ProductListItem(
            product: products[index],
            controller: controller,
          );
        },
        childCount: products.length,
      ),
    );
  }
}