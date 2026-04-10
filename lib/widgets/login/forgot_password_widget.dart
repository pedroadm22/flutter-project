import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassWordLink extends StatelessWidget {

  const ForgotPassWordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Text(
        "ESQUECI MINHA SENHA",
        style: GoogleFonts.nunitoSans(
          decoration: TextDecoration.underline,
          decorationThickness: 2.0,
          decorationColor: Colors.red,
          color: Colors.red,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
