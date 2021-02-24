import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/course_model.dart';

class CoursesProvider with ChangeNotifier {
  List<CourseModel> _courses = [];

  static const GET_URL = 'https://lk63euubve.execute-api.eu-central-1.amazonaws.com/default/courses';
  static const GET_URL_LOCAL = 'http://localhost:8080/api/academy/allCourses';

  Future<void> getCourses() async {
    try {
      final response = await http.get(GET_URL_LOCAL);
      final coursesData = json.decode(response.body) as List<dynamic>;
      if (coursesData == null) {
        return;
      }
      final List<CourseModel> loadedCourses = [];
      coursesData.forEach((course) =>
          {loadedCourses.add(CourseModel(name: course['name'], points: course['points'], details: course['details']))});
      _courses = loadedCourses;
      notifyListeners();
      print(json.decode(response.body));
    } catch (e) {
      print(e.toString());
      //TODO THROW ERROR IN FUTURE
    }
  }

  List<CourseModel> get course {
    return [..._courses];
  }
}
