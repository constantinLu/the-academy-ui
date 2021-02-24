import 'package:flutter/material.dart';
import 'package:the_academy/model/course_model.dart';
import 'package:the_academy/widgets/course/course_item.dart';

class CourseViewDesktop extends StatelessWidget {
  final List<CourseModel> courses;

  CourseViewDesktop(this.courses);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: courses.length,
      itemBuilder: (ctx, index) {
        final course = courses[index];
        return CourseItem(course);
      },
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, childAspectRatio: 3 / 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
    );
  }
}
