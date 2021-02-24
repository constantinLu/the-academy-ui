import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_academy/route/route_type.dart';
import 'package:the_academy/views/campus/campus_view.dart';
import 'package:the_academy/views/contact/contact_view.dart';
import 'package:the_academy/views/course/course_view.dart';
import 'package:the_academy/views/home/home_view.dart';
import 'package:the_academy/views/profile/profile_view.dart';
import 'package:the_academy/views/trainer/trainer_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case CoursesRoute:
      return _getPageRoute(CourseView());
    case TrainerRoute:
      return _getPageRoute(TrainerView());
    case CampusRoute:
      return _getPageRoute(CampusView());
    case ContactRoute:
      return _getPageRoute(ContactView());
    case ProfileRoute:
      return _getPageRoute(ProfileView());
    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
