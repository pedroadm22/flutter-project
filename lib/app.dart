import 'package:flutter/material.dart';
import 'screens/tela_perfil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio UI',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/perfil',

      routes: {
        '/perfil': (context) => const TelaPerfil(),
      },
    );
  }
}