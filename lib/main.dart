import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_academy/locator/locator.dart';
import 'package:the_academy/provider/course_provider.dart';
import 'package:the_academy/provider/courses_provider.dart';
import 'package:the_academy/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => CoursesProvider(),),
        ChangeNotifierProvider(create: (ctx) => CourseProvider(),),
      ],
      child: MaterialApp(
          title: 'The Academy',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
            primarySwatch: Colors.blue,
          ),
          home: LayoutTemplate()),
    );
  }
}
