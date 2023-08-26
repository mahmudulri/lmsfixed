// To parse this JSON data, do
//
//     final CourseDetailsModel = CourseDetailsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CourseDetailsModel CourseDetailsModelFromJson(String str) =>
    CourseDetailsModel.fromJson(json.decode(str));

String CourseDetailsModelToJson(CourseDetailsModel data) =>
    json.encode(data.toJson());

class CourseDetailsModel {
  final bool? success;
  final String? message;
  final Data? data;

  CourseDetailsModel({
    this.success,
    this.message,
    this.data,
  });

  CourseDetailsModel copyWith({
    bool? success,
    String? message,
    Data? data,
  }) =>
      CourseDetailsModel(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory CourseDetailsModel.fromJson(Map<String, dynamic> json) =>
      CourseDetailsModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data!.toJson(),
      };
}

class Data {
  final int id;
  final String uuid;
  final int userId;
  final int courseType;
  final int instructorId;
  final int categoryId;
  final int subcategoryId;
  final int courseLanguageId;
  final int difficultyLevelId;
  final String title;
  final String subtitle;
  final String description;

  final String price;
  final String oldPrice;
  final String learnerAccessibility;

  final int? introVideoCheck;
  final String? youtubeVideoId;

  final int isSubscriptionEnable;
  final int privateMode;
  final String slug;
  final int isFeatured;
  final int status;
  final String averageRating;
  final int dripContent;
  final int? accessPeriod;

  final int? organizationId;
  final List<KeyPoint> keyPoints;
  final String imageUrl;
  final String videoUrl;

  Data({
    required this.id,
    required this.uuid,
    required this.userId,
    required this.courseType,
    required this.instructorId,
    required this.categoryId,
    required this.subcategoryId,
    required this.courseLanguageId,
    required this.difficultyLevelId,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.learnerAccessibility,
    this.introVideoCheck,
    this.youtubeVideoId,
    required this.isSubscriptionEnable,
    required this.privateMode,
    required this.slug,
    required this.isFeatured,
    required this.status,
    required this.averageRating,
    required this.dripContent,
    this.accessPeriod,
    this.organizationId,
    required this.keyPoints,
    required this.imageUrl,
    required this.videoUrl,
  });

  // Data copyWith({
  //   int? id,
  //   String? uuid,
  //   int? userId,
  //   int? courseType,
  //   int? instructorId,
  //   int? categoryId,
  //   int? subcategoryId,
  //   int? courseLanguageId,
  //   int? difficultyLevelId,
  //   String? title,
  //   String? subtitle,
  //   String? description,
  //   String? price,
  //   String? oldPrice,
  //   String? learnerAccessibility,
  //   String? image,
  //   int? introVideoCheck,

  //   int? isSubscriptionEnable,
  //   int? privateMode,
  //   String? slug,
  //   int? isFeatured,
  //   int? status,
  //   String? averageRating,
  //   int? dripContent,
  //   int? accessPeriod,
  //   int? organizationId,
  //   List<KeyPoint>? keyPoints,
  //   String? imageUrl,
  //   String? videoUrl,
  // }) =>
  //     Data(
  //       id: id ?? this.id,
  //       uuid: uuid ?? this.uuid,
  //       userId: userId ?? this.userId,
  //       courseType: courseType ?? this.courseType,
  //       instructorId: instructorId ?? this.instructorId,
  //       categoryId: categoryId ?? this.categoryId,
  //       subcategoryId: subcategoryId ?? this.subcategoryId,
  //       courseLanguageId: courseLanguageId ?? this.courseLanguageId,
  //       difficultyLevelId: difficultyLevelId ?? this.difficultyLevelId,
  //       title: title ?? this.title,
  //       subtitle: subtitle ?? this.subtitle,
  //       description: description ?? this.description,
  //       price: price ?? this.price,
  //       oldPrice: oldPrice ?? this.oldPrice,
  //       learnerAccessibility: learnerAccessibility ?? this.learnerAccessibility,
  //       introVideoCheck: introVideoCheck ?? this.introVideoCheck,

  //       isSubscriptionEnable: isSubscriptionEnable ?? this.isSubscriptionEnable,
  //       privateMode: privateMode ?? this.privateMode,
  //       slug: slug ?? this.slug,
  //       isFeatured: isFeatured ?? this.isFeatured,
  //       status: status ?? this.status,
  //       averageRating: averageRating ?? this.averageRating,
  //       dripContent: dripContent ?? this.dripContent,
  //       accessPeriod: accessPeriod ?? this.accessPeriod,
  //       organizationId: organizationId ?? this.organizationId,
  //       keyPoints: keyPoints ?? this.keyPoints,
  //       imageUrl: imageUrl ?? this.imageUrl,
  //       videoUrl: videoUrl ?? this.videoUrl,
  //     );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        uuid: json["uuid"],
        userId: json["user_id"],
        courseType: json["course_type"],
        instructorId: json["instructor_id"],
        categoryId: json["category_id"],
        subcategoryId: json["subcategory_id"],
        courseLanguageId: json["course_language_id"],
        difficultyLevelId: json["difficulty_level_id"],
        title: json["title"],
        subtitle: json["subtitle"],
        description: json["description"],
        price: json["price"],
        oldPrice: json["old_price"],
        learnerAccessibility: json["learner_accessibility"],
        introVideoCheck: json["intro_video_check"] == null
            ? null
            : json["intro_video_check"],
        youtubeVideoId: json["youtube_video_id"] == null
            ? "no data"
            : json["youtube_video_id"],
        isSubscriptionEnable: json["is_subscription_enable"],
        privateMode: json["private_mode"],
        slug: json["slug"],
        isFeatured: json["is_featured"],
        status: json["status"],
        averageRating: json["average_rating"],
        dripContent: json["drip_content"],
        accessPeriod:
            json["access_period"] == null ? null : json["access_period"],
        organizationId:
            json["organization_id"] == null ? null : json["organization_id"],
        keyPoints: List<KeyPoint>.from(
            json["key_points"].map((x) => KeyPoint.fromJson(x))),
        imageUrl: json["image_url"],
        videoUrl: json["video_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "user_id": userId,
        "course_type": courseType,
        "instructor_id": instructorId,
        "category_id": categoryId,
        "subcategory_id": subcategoryId,
        "course_language_id": courseLanguageId,
        "difficulty_level_id": difficultyLevelId,
        "title": title,
        "subtitle": subtitle,
        "description": description,
        "price": price,
        "old_price": oldPrice,
        "learner_accessibility": learnerAccessibility,
        "youtube_video_id": youtubeVideoId,
        "intro_video_check": introVideoCheck,
        "is_subscription_enable": isSubscriptionEnable,
        "private_mode": privateMode,
        "slug": slug,
        "is_featured": isFeatured,
        "status": status,
        "average_rating": averageRating,
        "drip_content": dripContent,
        "access_period": accessPeriod,
        "organization_id": organizationId,
        "key_points": List<dynamic>.from(keyPoints.map((x) => x.toJson())),
        "image_url": imageUrl,
        "video_url": videoUrl,
      };
}

class KeyPoint {
  final int? id;
  final int? courseId;
  final String? name;

  KeyPoint({
    this.id,
    this.courseId,
    this.name,
  });

  KeyPoint copyWith({
    int? id,
    int? courseId,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      KeyPoint(
        id: id ?? this.id,
        courseId: courseId ?? this.courseId,
        name: name ?? this.name,
      );

  factory KeyPoint.fromJson(Map<String, dynamic> json) => KeyPoint(
        id: json["id"],
        courseId: json["course_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "course_id": courseId,
        "name": name,
      };
}
