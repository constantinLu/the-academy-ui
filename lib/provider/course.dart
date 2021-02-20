import 'package:flutter/foundation.dart';

class Course with ChangeNotifier {
  String name;
  int points;
  String details;

  Course({@required this.name, @required this.points, @required this.details});
}
