import 'package:flutter/material.dart';
import 'package:the_academy/route/route_type.dart';
import 'package:the_academy/widgets/navigation_drawer/drawer_item.dart';
import 'package:the_academy/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('Episodes', Icons.favorite, EpisodesRoute),
          DrawerItem('About', Icons.help, AboutRoute)
        ],
    ),
    );
  }
}
