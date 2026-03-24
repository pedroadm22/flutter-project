import 'package:flutter/material.dart';
import 'package:first_app/widgets/product_grid.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Produtos")),
      body: const ProductGrid(),
    );
  }
}
