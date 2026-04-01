import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';
import 'package:project_app_ecommerce_kachau/widgets/product/product_list_layout.dart';
import 'package:project_app_ecommerce_kachau/data/product/product_repo.dart';

class ProductScreen extends StatelessWidget {
  final CartListController controller;

  const ProductScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final products = ProductRepository.products;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 140,
            backgroundColor: Theme.of(context).colorScheme.surface,
            elevation: 0,

            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // LOGO
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/logo_app_bar.png',
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // BARRA DE PESQUISA
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Buscar produtos...",
                          hintStyle: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withOpacity(0.6),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
