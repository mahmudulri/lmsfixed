import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import 'curriculum_model.dart';

class CurriculumApi {
  static Future<CurriculumModel> fetchCurriculumData(String slug) async {
    final box = GetStorage();
    // String slug = box.read("courseDetailsSlug");
    final url = Uri.parse(
        'https://stg-lms.zainikthemes.com/api/course-details/$slug/curriculum');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      final curriculumModel =
          CurriculumModel.fromJson(json.decode(response.body));
      print(curriculumModel);

      return curriculumModel;
    } else {
      print("Error");
      throw Exception('Failed to fetch courses');
    }
  }
}
