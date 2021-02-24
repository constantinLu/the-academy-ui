import 'package:flutter/material.dart';
import 'package:the_academy/widgets/call_to_action/call_to_action.dart';
import 'package:the_academy/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 700,
        maxWidth: 700,
        maxHeight: 700,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDetails(),
          SizedBox(
            height: 100,
          ),
          CallToAction('Join Course'),
        ],
      ),
    );
  }
}
