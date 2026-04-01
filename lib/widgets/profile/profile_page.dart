import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app_ecommerce_kachau/widgets/custom_navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override 
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [_buildHeader(width)]),
      ),
    );
  }

  Widget _buildHeader(double width) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.04,
            vertical: width * 0.05,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(50, 50, 93, 0.25),
                blurRadius: 40,
                spreadRadius: -10,
                offset: Offset(0, 20),
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                blurRadius: 20,
                spreadRadius: -10,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildAvatar(width),
              SizedBox(width: width * 0.04),
              Expanded(child: _buildTexts(width)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar(double width) {
    return Container(
      height: width * 0.2,
      width: width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.withAlpha(100),
      ),
      child: Icon(Icons.person_rounded, size: width * 0.12),
    );
  }

  Widget _buildTexts(double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: "Bem-vindo de volta, ",
            style: GoogleFonts.montserrat(
              fontSize: width * 0.045,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "Pedro Lucas!",
                style: GoogleFonts.ptSans(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.02),
        Text(
          "Aqui você encontra todas as informações relacionadas ao seu perfil",
          style: GoogleFonts.ptSans(
            fontSize: width * 0.032,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
