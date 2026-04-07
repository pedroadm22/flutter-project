import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';

class CartSummary extends StatelessWidget {
  final CartListController controller;

  const CartSummary({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black,
          )
        ],
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 💰 Total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "R\$ ${controller.totalPrice.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // 🛍️ Botão
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Finalizar compra"),
            ),
          )
        ],
      ),
    );
  }
}