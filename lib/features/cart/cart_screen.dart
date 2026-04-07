import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';
import 'package:project_app_ecommerce_kachau/features/cart/cart_list.dart';
import 'package:project_app_ecommerce_kachau/features/cart/cart_summary.dart';

class CartScreen extends StatelessWidget {
  final CartListController controller;

  const CartScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
        centerTitle: true,
      ),

      body: controller.items.isEmpty
          ? const _EmptyCart()
          : Column(
              children: [
                Expanded(
                  child: CartList(controller: controller),
                ),

                CartSummary(controller: controller),
              ],
            ),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  const _EmptyCart();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Seu carrinho está vazio ",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}