// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60.0,
                backgroundColor: Color(0xFF000000),
                backgroundImage: NetworkImage(
                    "https://st2.depositphotos.com/3369547/11481/v/950/depositphotos_114817672-stock-illustration-avatar-man-icon-businesspeople-design.jpg"), // for Network image
              ),
              Center(
                  child: Text(
                "PROFILE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
              )),
            ],
          )),
    );
  }
}
