import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? TextAlign.left : TextAlign.center;
        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 50 : 80;
        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 16 : 21;

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.w800, height: 0.9),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'This tutorial is the first in a series that will go over all the basics for creating a website in Flutter.',
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
