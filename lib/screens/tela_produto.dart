import 'package:flutter/material.dart';
import 'package:first_app/widgets/product_card.dart';

class TelaProduto extends StatelessWidget {
  const TelaProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Loja")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ProductCard(
              title: 'Notebook Gamer',
              price: 2999.0,
              imageUrl: 'assets/images/product_image_1.jpeg',
            ),
            ProductCard(
              title: 'PC Gamer',
              price: 5999.90, 
              imageUrl: 'assets/images/pcgamer_image.jpeg',
            )
          ] 
        )
      )
    );
  }
}