import 'package:flutter/material.dart';
import 'package:the_academy/constants/tabs.dart';
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
                NavBarItem(HOME_LABEL, HomeRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(COURSE_LABEL, CoursesRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(TRAINER_LABEL, TrainerRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(CAMPUS_LABEL, CampusRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(CONTACT_LABEL, ContactRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem(PROFILE_LABEL, ProfileRoute),
                SizedBox(
                  width: 60,
                ),
              ],
            )
          ],
        ));
  }
}
