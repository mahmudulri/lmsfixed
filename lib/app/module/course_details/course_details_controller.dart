import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:lmszai/app/module/base_page/home_page/bundle_course/bundle_network.dart';

import 'course_details.dart';
import 'course_details_model.dart';
import 'course_details_network.dart';

class CourseDetailsController extends GetxController {
  // @override
  // void onInit() {
  //   fetchcourseDetails();
  //   super.onInit();
  // }

  var isLoading = false.obs;

  var allcoursedatalist = CourseDetailsModel().obs;

  void fetchcourseDetails(String slug) async {
    try {
      isLoading(true);
      var courselistdata =
          await CourseDetailsApi.fetchCourses(slug).then(((value) {
        allcoursedatalist.value = value;

        return allcoursedatalist;
      }));
      isLoading(false);
    } catch (e) {
      print(e.toString());
    }
  }
}
