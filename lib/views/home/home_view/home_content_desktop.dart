import 'package:flutter/material.dart';
import 'package:the_academy/widgets/call_to_action/call_to_action.dart';
import 'package:the_academy/widgets/course_details/course_details.dart';

class HomeViewContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CourseDetails(),
      Expanded(
        child: Center(
          child: CallToAction("Join Course"),
        ),
      ),
    ]);
  }
}
