// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EmergencyPage extends StatefulWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "SOS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 60),
            )),
            SizedBox(
              height: 15,
            ),
            ListTile(
                title: Text(
                  "Contact 1",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                leading: Icon(Icons.call),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.black,
                    ))),
            ListTile(
                title: Text(
                  "Contact 2",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                leading: Icon(Icons.call),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.black,
                    ))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
