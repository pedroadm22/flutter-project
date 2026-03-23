import 'package:flutter/material.dart';
import 'package:first_app/widgets/product_card.dart'

class TelaProduto extends StatelessWidget {
  const TelaProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Loja")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Product()
        ]  
    );
  }
}