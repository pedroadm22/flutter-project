import 'package:project_app_ecommerce_kachau/screens/product_screen.dart';
import 'package:project_app_ecommerce_kachau/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'tela_perfil.dart';
import 'package:project_app_ecommerce_kachau/screens/test_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [TelaPerfil(), ProductScreen(), TestsScreen()];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: CustomBottomNav(
        currentIndex: currentIndex,
        onTap: onTabTapped,
      ),
    );
  }
}
