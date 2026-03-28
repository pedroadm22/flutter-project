import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/screens/product_screen.dart';
import 'package:project_app_ecommerce_kachau/screens/cart_screen.dart';
import 'package:project_app_ecommerce_kachau/controllers/product_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final cartController = CartController();

  late final List<Widget> pages = [
    ProductScreen(controller: cartController),
    CartScreen(controller: cartController),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Carrinho",
          ),
        ],
      ),
    );
  }
}
