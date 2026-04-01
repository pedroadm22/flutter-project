import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moeda_brasil/moeda_brasil.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  final double price;
  final double cardPrice;
  final int parcelamentos = 10;
  
  const ProductInfo({super.key, required this.title, required this.price, required this.cardPrice});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold, 
            fontSize: 16,
            color: colors.onPrimary
            ),
        ),
        const SizedBox(height: 4),
        Text(
          "R\$ ${price.toStringAsFixed(2)}",
          style: GoogleFonts.bebasNeue(color: Colors.green, 
          fontSize: 16, 
          fontWeight: FontWeight.bold),
        ),
        Text(
          "ou ${parcelamentos}x de R\$ ${MoedaBrasil.formatarParaReal((price/parcelamentos).toStringAsFixed(2))} sem juros",
          style: TextStyle(
            color: Color(0xFF757575),
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
