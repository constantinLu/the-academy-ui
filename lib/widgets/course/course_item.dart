import 'package:flutter/material.dart';
import 'package:the_academy/model/course_model.dart';

class CourseItem extends StatelessWidget {
  final CourseModel courseModel;

  CourseItem(this.courseModel);

  Image courseImage() {
    if (courseModel.name == "All") {
      return Image.asset("assets/image/all.png");
    }
    if (courseModel.name == "Concurrency") {
      return Image.asset("assets/image/concurency.jpg");
    }
    if (courseModel.name == "Java") {
      return Image.asset("assets/image/java.jpg");
    }
    if (courseModel.name == "Git") {
      return Image.asset("assets/image/git.jpg");
    }
    if (courseModel.name == "Maven") {
      return Image.asset("assets/image/maven.jpg");

    } else {
      return Image.asset("assets/image/all.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                //clip the image with widget:
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: (courseImage())),
                // on top of the image
                //this Positioned will work only in the StackWidget.
                Positioned(
                  bottom: 20,
                  right: 5,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(courseModel.name,
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 5),
                      Text('1 min'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 5),
                      Text(courseModel.points.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 5),
                      Text(courseModel.details),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
