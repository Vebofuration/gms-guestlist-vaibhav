import 'package:flutter/material.dart';

import 'my_icon.dart';
import 'my_icon2.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(47, 24, 105, 1),
        width: 102,
        // height: 1024,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 12),
                      child: Text(
                        "GMS",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    MyIcon(
                      myicon: Icons.menu_book,
                      mytext: 'Reservations',
                    ),
                    MyIcon(
                      myicon: Icons.settings_input_composite_outlined,
                      mytext: 'Grid',
                    ),
                    MyIcon(
                      myicon: Icons.border_all_rounded,
                      mytext: 'Floor plan',
                    ),
                    MyIcon(
                      myicon: Icons.list,
                      mytext: 'Guestlist',
                    ),
                    MyIcon(
                      myicon: Icons.chat_bubble_outline,
                      mytext: 'Requests',
                    ),
                    MyIcon(
                      myicon: Icons.person,
                      mytext: 'Clients',
                    ),
                    MyIcon(
                      myicon: Icons.bar_chart_rounded,
                      mytext: 'Reporting',
                    ),
                    MyIcon(
                      myicon: Icons.volume_up_outlined,
                      mytext: 'Marketing',
                    ),
                  ],
                ),
              ),
            ),

            // const SizedBox(
            //   height: 278,
            // ),
            // Spacer(),
            Column(
              children: [
                const Divider(
                  color: Color.fromRGBO(73, 80, 87, 1),
                  height: 1,
                ),
                const SizedBox(
                  height: 21,
                ),
                MyIcon2(myicon2: Icons.help_outline),
                MyIcon2(myicon2: Icons.settings),
                MyIcon2(myicon2: Icons.person_2_outlined),
                const Padding(
                  padding: EdgeInsets.only(bottom: 22),
                  child: Icon(
                    Icons.logout,
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
