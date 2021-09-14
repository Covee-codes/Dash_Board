import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  const CustomText(
      {Key? key,
      required this.text,
      required this.size,
      required this.color,
      required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: 
    // ignore: prefer_const_constructors
    TextStyle
    (fontSize: 16, 
    color: Colors.black, 
    fontWeight: FontWeight.normal),
    );
  }
}
