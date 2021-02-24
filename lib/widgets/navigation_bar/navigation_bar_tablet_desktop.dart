import 'package:flutter/material.dart';
import 'package:the_academy/constants/app_color.dart';
import 'package:the_academy/constants/tabs.dart';
import 'package:the_academy/route/route_type.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: appColor,
          gradient: new LinearGradient(
              colors: [Colors.white ,appColor , Colors.white],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
          ),
      ),
      child: Container(
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarLogo(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NavBarItem(HOME_LABEL, HomeRoute, null),
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem(COURSE_LABEL, CoursesRoute, null),
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem(TRAINER_LABEL, TrainerRoute, null),
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem(CAMPUS_LABEL, CampusRoute, null),
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem(CONTACT_LABEL, ContactRoute, null),
                  SizedBox(
                    width: 60,
                  ),
                  NavBarItem(PROFILE_LABEL, ProfileRoute, Icons.account_circle),
                  SizedBox(
                    width: 60,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
