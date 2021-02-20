import 'package:flutter/material.dart';
import 'package:the_academy/constants/app_color.dart';
import 'package:the_academy/widgets/navigation_bar/navbar_logo.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: logoColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NavBarLogo()
        ],
      ),
    );
  }
}
