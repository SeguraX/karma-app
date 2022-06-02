// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("SeguraX"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff000000)),
                accountName: Text(
                  "Aryaman Shrivastava",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "aryamanvirus@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Color(0xFF778899),
                  backgroundImage: NetworkImage(
                      "https://st2.depositphotos.com/3369547/11481/v/950/depositphotos_114817672-stock-illustration-avatar-man-icon-businesspeople-design.jpg"), // for Network image
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.call_outlined,
                ),
                title: Text('Contact 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.call_outlined),
                title: const Text('Contact 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              AboutListTile(
                icon: Icon(
                  Icons.info,
                ),
                child: Text('About app'),
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'SeguraX',
                applicationVersion: '1.0.0',
                //applicationLegalese: '© 2022 Company',
                aboutBoxChildren: [
                  Center(child: Text('Welcome to the App')),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Center(
              child: Text(
                "SeguraX",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 60),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcomes You',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.purpleAccent,
                      fontSize: 30),
                ),
              ],
            )
          ],
        ));
  }
}
