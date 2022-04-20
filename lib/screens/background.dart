// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Image.asset("assests/images/screen.png",
                fit: BoxFit.fill,
                scale: 1,
                width: size.width*1.1,
                height: size.height),
          ),
          child,
        ],
      ),
    );
  }
}
