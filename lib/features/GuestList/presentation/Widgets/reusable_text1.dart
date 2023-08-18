import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableText extends StatelessWidget {
  String mytext;
  ReusableText({required this.mytext, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: TextStyle(
          color: Color.fromRGBO(33, 37, 41, 1),
          fontSize: 12,
          fontWeight: FontWeight.w700),
    );
  }
}
