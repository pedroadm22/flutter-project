import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/widgets/product_grid.dart';
import 'package:project_app_ecommerce_kachau/data/product_repo.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ProductRepository.products;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
          ),

          ProductGrid(products: products),
        ],
      ),
    );
  }
}
