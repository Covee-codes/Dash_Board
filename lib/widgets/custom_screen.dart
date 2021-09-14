import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      constraints: BoxConstraints.expand(),
      color: Colors.deepOrangeAccent,
    );
  }
}
