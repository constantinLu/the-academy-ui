import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class CourseService {

  static const GET_URL = 'https://lk63euubve.execute-api.eu-central-1.amazonaws.com/default/courses';


  Future<void> getCourses() async {
    var response = await http.get(GET_URL);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(response.body);
    }
  }
}
