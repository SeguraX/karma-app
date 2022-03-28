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
        splash: Container(
          child: Center(
            child: Text("SeguraX",
                style: GoogleFonts.pacifico(fontSize: 20, color: Colors.white)),
          ),
          width: 800,
          height: 800,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.teal.shade600),
        ),
        nextScreen: Login(),
      ),
    );
  }
}
