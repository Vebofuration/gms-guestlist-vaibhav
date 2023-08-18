import 'package:flutter/material.dart';
import 'package:guestlistvk/features/GuestList/presentation/Widgets/footer.dart';
import 'package:guestlistvk/features/GuestList/presentation/Widgets/guest_list.dart';
import 'package:guestlistvk/features/GuestList/presentation/Widgets/reusable_text1.dart';
import 'package:guestlistvk/features/GuestList/presentation/Widgets/navbar.dart';
import 'package:guestlistvk/features/GuestList/presentation/Widgets/dropdown_part.dart';

class GuestListScreen extends StatelessWidget {
  const GuestListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const NavBar(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 14, top: 10, bottom: 10),
                          child: Text(
                            "AKINA",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(33, 37, 41, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, right: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color.fromRGBO(33, 37, 41, 1),
                                child: Text(
                                  "A",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Adityaaraj Singh",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(33, 37, 41, 1),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: const Color.fromRGBO(241, 243, 245, 1),
                      child: const Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 12, top: 17, bottom: 18),
                            child: Text(
                              "GUESTLIST",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(206, 212, 218, 1)))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropDownPart(),
                          Row(
                            children: [
                              VerticalDivider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 13, right: 15, bottom: 13, left: 15),
                                child: Icon(Icons.file_download_outlined),
                              ),
                              VerticalDivider(),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 13, right: 27, bottom: 13, left: 15),
                                child: Icon(Icons.file_upload_outlined),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 12, left: 48, right: 112),
                          child: ReusableText(mytext: "GUEST LIST"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 12, right: 128),
                          child: ReusableText(mytext: "BOOKED BY"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 12, right: 120),
                          child: ReusableText(mytext: "STATUS"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: ReusableText(mytext: "NOTES"),
                        ),
                      ],
                    ),
                    const GuestListshow(),
                  ],
                ),
                const Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
