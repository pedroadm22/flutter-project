import 'package:flutter/material.dart';
import 'package:project_app_ecommerce_kachau/data/product/Product.dart';

class CartItem extends StatelessWidget {
  final Product product;
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const CartItem({
    super.key,
    required this.product,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primary,
        ),

        child: Row(
          children: [
            Image.asset(
              product.imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
      
            const SizedBox(width: 12),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
      
                  const SizedBox(height: 4),
      
                  Text("R\$ ${product.cardPrice.toStringAsFixed(2)}"),
      
                  const SizedBox(height: 8),
      
                  Row(
                    children: [
                      IconButton(
                        onPressed: onRemove,
                        icon: const Icon(Icons.remove),
                      ),
      
                      Text("$quantity"),
      
                      IconButton(
                        onPressed: onAdd,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}