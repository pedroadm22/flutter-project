import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/controllers/product_controller.dart';
import 'package:project_app_ecommerce_kachau/widgets/product_grid.dart';
import 'package:project_app_ecommerce_kachau/data/product_repo.dart';

class ProductScreen extends StatelessWidget {
  final CartController controller;
  const ProductScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final products = ProductRepository.products;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: SizedBox(
              child: Image.asset(
                'assets/images/logo_app_bar.png',
                fit: BoxFit.cover,
                ),
            ),
            pinned: false,
          ),

          ProductList(products: products, controller: controller,),
        ],
      ),
    );
  }
}
