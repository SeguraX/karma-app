import 'package:flutter/material.dart';
import 'package:myapp/screens/background.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController textController;
  late TextEditingController textController2;
  late bool passwordVisibility;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    textController2 = TextEditingController();
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
              height: MediaQuery.of(context).size.height / 1.5,
            ),
            
          ],
        )),
      ),
    );
  }
}
