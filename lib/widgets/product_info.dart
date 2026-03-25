import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  final double price;

  const ProductInfo({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.bebasNeue(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(
          "R\$ ${price.toStringAsFixed(2)}",
          style: const TextStyle(color: Colors.green, fontSize: 14),
        ),
      ],
    );
  }
}
