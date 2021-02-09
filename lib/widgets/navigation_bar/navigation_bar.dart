import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_academy/widgets/navigation_bar/navbar_logo.dart';
import 'package:the_academy/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';

import 'navbar_item.dart';
import 'navigation_bar_mbile.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
      desktop: NavigationBarTabletDesktop(),
    );
  }
}
