import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 14, bottom: 14, right: 30),
          child: Text(
            "Total Booked:",
            style: TextStyle(
                color: Color.fromRGBO(58, 54, 219, 1),
                fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10, right: 30),
          child: Row(
            children: [
              Text(
                '79',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                " Guestlist",
                style: TextStyle(
                    color: Color.fromRGBO(33, 37, 41, 1),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10, right: 30),
          child: Row(
            children: [
              Text(
                '79',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                " Guest",
                style: TextStyle(
                    color: Color.fromRGBO(33, 37, 41, 1),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }
}
