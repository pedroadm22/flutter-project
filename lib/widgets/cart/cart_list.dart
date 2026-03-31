import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/widgets/cart/cart_item.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';

class CartList extends StatelessWidget {
  final CartListController controller;

  const CartList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.items.length,
      itemBuilder: (context, index) {
        final item = controller.items[index];

        return CartItem(
          product: item.product,
          quantity: item.quantity,
          onAdd: () => controller.addProduct(item.product),
          onRemove: () => controller.removeProduct(item.product),
        );
      },
    );
  }
}
