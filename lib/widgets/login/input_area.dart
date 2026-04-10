import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:google_fonts/google_fonts.dart';

class InputArea extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final IconData? icon;

  @Preview(name: "Input Area Preview")
  const InputArea({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(9, 30, 66, 0.25),
            blurRadius: 8,
            spreadRadius: -2,
            offset: Offset(0, 4),
          ),
          BoxShadow(
            color: Color.fromRGBO(9, 30, 66, 0.08),
            blurRadius: 0,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),

      child: TextFormField(
        style: GoogleFonts.inter(
          color: Theme.of(context).primaryColorDark,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
        obscureText: obscureText,
        decoration: InputDecoration( 
          icon: icon != null
              ? Icon(
                  icon,
                  color: Theme.of(context).secondaryHeaderColor,
                  size: 30,
                )
              : null,
          hintText: hintText ?? "",
          hintStyle: GoogleFonts.nunito(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        ),
      ),
    );
  }
}
