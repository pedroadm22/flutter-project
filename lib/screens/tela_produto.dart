import 'package:flutter/material.dart';

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
            Image.asset(
              "assets/images/product_image_1.jpeg",
              height: 200,
            ),

            const SizedBox(height: 16),

            const Text(
              "Notebook Gamer",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              "R\$ 4.500",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),

            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.grey.shade200,
              child: const Text(
                "Notebook com alto desempenho para jogos e programação.",
              ),
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Comprar"),
            )
          ],
        ),
      ),
    );
  }
}