import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(5, 20, 0, 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(50, 50, 93, 0.25),
                      blurRadius: 100,
                      spreadRadius: -20,
                      offset: Offset(0, 50),
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      blurRadius: 60,
                      spreadRadius: -30,
                      offset: Offset(0, 30),
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(10, 37, 64, 0.35),
                      blurRadius: 6,
                      spreadRadius: 0,
                      offset: Offset(0, -2),
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 1.0),
                      blurRadius: 0,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ),
                  ],
                  color: Colors.grey[200], // Corrected color shade
                ),
                child: Expanded(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30)),
                                child: Icon(Icons.person),
                              ),

                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Bem-vindo de volta, ",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Pedro Lucas",
                                      style: GoogleFonts.lato(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(height: 50),
                              Text(
                                "Pedro Lucas Martins Rozendo\np.plmr45@gmail.com",
                                style: GoogleFonts.lato(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
