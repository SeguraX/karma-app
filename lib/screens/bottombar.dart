// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myapp/screens/Emergencysos.dart';
import 'package:myapp/screens/home_page.dart';
import 'package:myapp/screens/location.dart';
import 'package:myapp/screens/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List pages = [HomePage(),  LocationPage(), EmergencyPage(),Profile()];

  int currentIndex = 0;
  void OnTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060427),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
        onTap: OnTap,
        currentIndex: currentIndex,
        selectedItemColor: Color(0XFF000000),
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed_rounded),label: "GPS"
          ),BottomNavigationBarItem(
            icon: Icon(Icons.settings_remote_sharp),label: "SOS"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
