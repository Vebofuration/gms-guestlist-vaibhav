import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyIcon2 extends StatelessWidget {
  IconData myicon2;
  MyIcon2({required this.myicon2, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Icon(
        myicon2,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}
