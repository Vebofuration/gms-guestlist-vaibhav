import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyIcon extends StatelessWidget {
  IconData myicon;
  String mytext;
  MyIcon({required this.myicon, required this.mytext, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Icon(
            size: 20,
            myicon,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 12),
          child: Text(
            mytext,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(222, 226, 230, 1),
            ),
          ),
        ),
      ],
    );
  }
}
