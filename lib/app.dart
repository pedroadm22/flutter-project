import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/core/themes/app_color_themes.dart';
import 'package:project_app_ecommerce_kachau/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final themeMode;


  const MyApp({super.key, this.themeMode});

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      theme: AppTheme.dark,
      darkTheme: AppTheme.dark,
      home: const HomePage(),
    );
  }
}