import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';
import 'package:project_app_ecommerce_kachau/data/product/Product.dart';
import 'package:project_app_ecommerce_kachau/widgets/product/product_info.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final CartListController controller;
  // final CartListController cartController;

  const ProductCard({
    super.key,
    required this.product,
    required this.controller,
    //  required this.cartController
  });
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12, left: 9, right: 9),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: colors.secondary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            // sombra principal (profundidade)
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.6 : 0.2),
              blurRadius: 12,
              offset: const Offset(4, 4),
            ),

            // luz suave (efeito elevado)
            BoxShadow(
              color: Colors.white.withValues(alpha: isDark ? 0.05 : 0.7),
              blurRadius: 8,
              offset: const Offset(-2, -2),
            ),
          ],
        ),

        child: Expanded(
          child: Row(
            children: [
              Image.asset(product.imagePath, width: 100, height: 100),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductInfo(
                      title: product.title,
                      price: product.cardPrice,
                      cardPrice: product.cashPrice,
                    ),

                    const SizedBox(height: 8),

                    ElevatedButton(
                      onPressed: () {
                        controller.addProduct(product);
                      },
                      child: Text("Comprar"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
