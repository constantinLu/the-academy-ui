import 'package:flutter/material.dart';
import 'package:the_academy/constants/app_color.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Skill up now',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text(
            'TAP HERE',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          )
        ],
      ),
    );
  }
}
