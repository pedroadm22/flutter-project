import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String? mainText;
  final Color? color;
  final TextAlign? textAlign;

  const MainTitle({super.key, this.mainText, this.color, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        mainText ?? "Login",
        style: GoogleFonts.fjallaOne(
          color: Theme.of(context).secondaryHeaderColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
