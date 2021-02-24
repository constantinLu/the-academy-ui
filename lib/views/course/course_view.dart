import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_academy/provider/courses_provider.dart';
import 'package:the_academy/widgets/course/course_item.dart';

class CourseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<CoursesProvider>(context, listen: false).getCourses(),
      builder: (ctx, dataSnapshot) {
        if (dataSnapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          if (dataSnapshot.error != null) {
            // ...
            // Do error handling stuff
            return Center(
              child: Text('An error occurred!'),
            );
          } else {
            return Consumer<CoursesProvider>(
              builder: (ctx, courseModels, child) => GridView.builder(
                itemCount: courseModels.course.length,
                itemBuilder: (ctx, i) => CourseItem(courseModels.course[i]),
                // define how the grid should be structured.
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 3 / 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              ),
            );
          }
        }
      },
    );
  }
}
