import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableColor extends StatelessWidget {
  Color mycolor;
  ReusableColor({required this.mycolor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mycolor,
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 48, top: 12, right: 151, bottom: 12),
            child: Text(
              "Aditi",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(73, 80, 87, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12, right: 128, bottom: 12),
            child: Text(
              "Angeliki Dm",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(73, 80, 87, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12, right: 104, bottom: 12),
            child: Text(
              "Checked In",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(73, 80, 87, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12, right: 104, bottom: 12),
            child: Text(
              "From event team",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(73, 80, 87, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
