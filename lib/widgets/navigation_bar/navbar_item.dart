import 'package:flutter/material.dart';
import 'package:the_academy/locator/locator.dart';
import 'package:the_academy/service/navigator_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    // how to navigate through pages in flutter. (get_it lib).
    //Navigator.of(context).pushNamed(EpisodesRoute);
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      // DON`T ever use a service direclty in the uI to change any kind of state
      child: Text(
      title,
      style: TextStyle(fontSize: 18),
    ),);
  }
}
