// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth/login.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: SizedBox(
          child: Text(
            'SeguraX',
            style: GoogleFonts.pacifico(
                fontSize: 55, fontWeight: FontWeight.bold, color: Colors.teal[600]),
          ),
        ),
        nextScreen: LoginPage(),
      ),
    );
  }
}
