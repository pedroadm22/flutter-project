import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/features/product/data/Product.dart';
import 'package:project_app_ecommerce_kachau/features/product/product_info.dart';
import 'package:project_app_ecommerce_kachau/controllers/product_controller.dart';

class ProductListItem extends StatelessWidget {
  final Product product;
  final CartController controller;

  const ProductListItem(
      {super.key, required this.product, required this.controller}
      );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
      
        child: Expanded(
          child: Row(
            children: [
              Image.asset(
                product.imagePath,
                width: 100,
                height: 100,
              ),
          
              const SizedBox(width: 12,),
              
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductInfo(
                          title: product.title,
                          price: product.price),
                      const SizedBox(height: 8,),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}