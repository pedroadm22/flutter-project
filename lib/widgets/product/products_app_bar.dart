import 'package:flutter/material.dart';
import 'products_search_bar.dart'; // Certifique-se de que o path está correto

class ProductsAppBar extends StatelessWidget {
  const ProductsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,          // Mantém a barra fixa no topo
      floating: true,        // Reaparece imediatamente ao rolar para cima
      snap: false,
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.surface,
      // Usamos o 'title' em vez de 'flexibleSpace' para que os itens fiquem fixos
      title: Row(
        children: [
          // LOGO
          Image.asset(
            'assets/images/logo_app_bar.png',
            height: 50, // Altura ajustada para caber na AppBar comum
            fit: BoxFit.contain,
          ),
          
          const SizedBox(width: 12),

          // CAMPO DE PESQUISA
          // O Expanded é OBRIGATÓRIO aqui para evitar o erro de RenderBox
          const Expanded(
            child: SizedBox(
              height: 40,
              child: ProductsSearchBar(),
            ),
          ),
        ],
      ),
    );
  }
}