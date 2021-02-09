import 'package:flutter/material.dart';
import 'package:the_academy/route/route_type.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarItem("Episodes", EpisodesRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem("About", AboutRoute),
                SizedBox(
                  width: 60,
                ),
              ],
            )
          ],
        ));
  }
}
