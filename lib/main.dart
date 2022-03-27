// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'auth/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.teal.shade700,
        splash: Text("SeguraX",
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(fontSize: 40, color: Colors.white)),
        nextScreen: Login(),
      ),
    );
  }
}
