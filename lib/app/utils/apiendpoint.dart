class ApiEndPoints {
  static String baseUrl = "https://stg-lms.zainikthemes.com/api/";
  static AuthendPoints authendPoints = AuthendPoints();
  static OtherendPoints otherendpoints = OtherendPoints();
}

class AuthendPoints {
  final String registerlink = "register";
  final String loginIink = "login";
  final String courses = "home/courses";
}

class OtherendPoints {
  final String coursedetails = "course-details/";
}
