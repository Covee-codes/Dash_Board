import 'package:flutter/material.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      constraints: BoxConstraints.expand(),
      color: Colors.purpleAccent,
    );
  }
}