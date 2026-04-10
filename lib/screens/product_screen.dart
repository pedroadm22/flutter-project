import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';
import 'package:project_app_ecommerce_kachau/widgets/product/product_list_layout.dart';
import 'package:project_app_ecommerce_kachau/data/product/product_repo.dart';
import 'package:project_app_ecommerce_kachau/widgets/product/products_app_bar.dart';

class ProductScreen extends StatelessWidget {
  final CartListController controller;

  const ProductScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final products = ProductRepository.products;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const ProductsAppBar(),
          ProductList(
            products: products,
            controller: controller,
            //    cartController: cartController,
          ),
        ],
      ),
    );
  }
}

