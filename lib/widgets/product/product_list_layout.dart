import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';
import 'package:project_app_ecommerce_kachau/data/product/Product.dart';
import 'package:project_app_ecommerce_kachau/widgets/product/product_card.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;
  final CartListController controller;
//  final CartController cartController;

  const ProductList({
    super.key,
    required this.products,
    required this.controller,
  //  required this.cartController
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
          return ProductCard(
            product: products[index],
            controller: controller,
          );
        },
        childCount: products.length,
      ),
    );
  }
}