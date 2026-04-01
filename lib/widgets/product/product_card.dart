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
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12, left: 9, right: 9),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: BoxBorder.all(),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(204, 219, 232, 1),
              blurRadius: 6,
              spreadRadius: 0,
              offset: Offset(3, 3),
            ),
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(-3, -3),
            ),
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 1),
              blurRadius: 0,
              spreadRadius: 0,
              offset: Offset(0, 0),
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
