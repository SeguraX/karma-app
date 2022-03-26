import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          centerTitle: true,
        ),
        drawer: const Drawer(),
        body: const Center(
            child: Text(
          "My first flutter app",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        )));
  }
}

class Response extends StatefulWidget {
  const Response({Key? key}) : super(key: key);

  @override
  _ResponseState createState() => _ResponseState();
}

class _ResponseState extends State<Response> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Icon(Icons.add),
    );
  }
}
