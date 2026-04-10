import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsSearchBar extends StatelessWidget {
  @Preview(name: "Products Search Bar")
  const ProductsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: "Buscar produtos...",
        hintStyle: GoogleFonts.roboto(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
