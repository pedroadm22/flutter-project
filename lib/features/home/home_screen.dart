import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/features/product/product_screen.dart';
import 'package:project_app_ecommerce_kachau/features/profile/profile_page.dart';
import 'package:project_app_ecommerce_kachau/features/cart/cart_screen.dart';
import 'package:project_app_ecommerce_kachau/features/home/home_navbar.dart';
import 'package:project_app_ecommerce_kachau/controllers/cart_product_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final cartListController = CartListController();

  late final List<Widget> pages = [
    ProductScreen(controller: cartListController,),
    CartScreen(controller: cartListController),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) => {
          setState(() {
            _currentIndex = index;
          }),
        },
      ),
    );
  }
}
