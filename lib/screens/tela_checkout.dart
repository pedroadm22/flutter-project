import 'package:flutter/material.dart';

class TelaCheckout extends StatelessWidget {
  final String nome;
  final String preco;
  final String imagem;

  const TelaCheckout({
    super.key,
    required this.nome,
    required this.preco,
    required this.imagem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 IMAGEM DO PRODUTO
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagem,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // 🔹 NOME
            Text(
              nome,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // 🔹 PREÇO
            Text(
              preco,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 RESUMO
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Resumo:\n\nProduto selecionado pronto para compra. "
                "Clique no botão abaixo para finalizar.",
              ),
            ),

            const Spacer(),

            // 🔹 BOTÃO FINALIZAR
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Compra finalizada com sucesso!"),
                    ),
                  );
                },
                child: const Text("Finalizar Compra"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}