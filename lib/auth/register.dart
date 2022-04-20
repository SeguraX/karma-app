// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/background.dart';
import 'package:myapp/screens/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController passController;
  late bool passwordVisibility;
  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
              child: TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Phone No..',
                    hintStyle: GoogleFonts.roboto(color: Colors.black38),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.teal[100],
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    )),
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
              child: TextFormField(
                controller: emailController,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Email..',
                    hintStyle: GoogleFonts.roboto(color: Colors.black38),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.teal[100],
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    )),
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
              child: TextFormField(
                controller: phoneController,
                obscureText: !passwordVisibility,
                decoration: InputDecoration(
                  hintText: 'Password..',
                  hintStyle: GoogleFonts.roboto(color: Colors.black38),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.teal[100],
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(
                    Icons.vpn_key_outlined,
                    color: Colors.black,
                  ),
                  suffixIcon: InkWell(
                      onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.black,
                        size: 22,
                      )),
                ),
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  primary: Colors.teal[600],
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: MediaQuery.of(context).size.height * 0.012),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
