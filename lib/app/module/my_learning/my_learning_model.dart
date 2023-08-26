// To parse this JSON data, do
//
//     final myLearningModel = myLearningModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

MyLearningModel myLearningModelFromJson(String str) =>
    MyLearningModel.fromJson(json.decode(str));

String myLearningModelToJson(MyLearningModel data) =>
    json.encode(data.toJson());

class MyLearningModel {
  final bool success;
  final String message;
  final Data data;

  MyLearningModel({
    required this.success,
    required this.message,
    required this.data,
  });

  MyLearningModel copyWith({
    bool? success,
    String? message,
    Data? data,
  }) =>
      MyLearningModel(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory MyLearningModel.fromJson(Map<String, dynamic> json) =>
      MyLearningModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  final Enrollments enrollments;

  Data({
    required this.enrollments,
  });

  Data copyWith({
    Enrollments? enrollments,
  }) =>
      Data(
        enrollments: enrollments ?? this.enrollments,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        enrollments: Enrollments.fromJson(json["enrollments"]),
      );

  Map<String, dynamic> toJson() => {
        "enrollments": enrollments.toJson(),
      };
}

class Enrollments {
  final int currentPage;
  final List<Datum> data;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final List<Link> links;
  final dynamic nextPageUrl;
  final String path;
  final int perPage;
  final dynamic prevPageUrl;
  final int to;
  final int total;

  Enrollments({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  Enrollments copyWith({
    int? currentPage,
    List<Datum>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Link>? links,
    dynamic nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) =>
      Enrollments(
        currentPage: currentPage ?? this.currentPage,
        data: data ?? this.data,
        firstPageUrl: firstPageUrl ?? this.firstPageUrl,
        from: from ?? this.from,
        lastPage: lastPage ?? this.lastPage,
        lastPageUrl: lastPageUrl ?? this.lastPageUrl,
        links: links ?? this.links,
        nextPageUrl: nextPageUrl ?? this.nextPageUrl,
        path: path ?? this.path,
        perPage: perPage ?? this.perPage,
        prevPageUrl: prevPageUrl ?? this.prevPageUrl,
        to: to ?? this.to,
        total: total ?? this.total,
      );

  factory Enrollments.fromJson(Map<String, dynamic> json) => Enrollments(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  final int id;
  final int orderId;
  final int userId;
  final int ownerUserId;
  final int courseId;
  final int consultationSlotId;
  final dynamic bundleId;
  final dynamic userPackageId;
  final int completedTime;
  final DateTime startDate;
  final DateTime endDate;
  final int status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String unitPrice;
  final Course course;

  Datum({
    required this.id,
    required this.orderId,
    required this.userId,
    required this.ownerUserId,
    required this.courseId,
    required this.consultationSlotId,
    required this.bundleId,
    required this.userPackageId,
    required this.completedTime,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.unitPrice,
    required this.course,
  });

  Datum copyWith({
    int? id,
    int? orderId,
    int? userId,
    int? ownerUserId,
    int? courseId,
    int? consultationSlotId,
    dynamic bundleId,
    dynamic userPackageId,
    int? completedTime,
    DateTime? startDate,
    DateTime? endDate,
    int? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? unitPrice,
    Course? course,
  }) =>
      Datum(
        id: id ?? this.id,
        orderId: orderId ?? this.orderId,
        userId: userId ?? this.userId,
        ownerUserId: ownerUserId ?? this.ownerUserId,
        courseId: courseId ?? this.courseId,
        consultationSlotId: consultationSlotId ?? this.consultationSlotId,
        bundleId: bundleId ?? this.bundleId,
        userPackageId: userPackageId ?? this.userPackageId,
        completedTime: completedTime ?? this.completedTime,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        unitPrice: unitPrice ?? this.unitPrice,
        course: course ?? this.course,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        orderId: json["order_id"],
        userId: json["user_id"],
        ownerUserId: json["owner_user_id"],
        courseId: json["course_id"],
        consultationSlotId: json["consultation_slot_id"],
        bundleId: json["bundle_id"],
        userPackageId: json["user_package_id"],
        completedTime: json["completed_time"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        unitPrice: json["unit_price"],
        course: Course.fromJson(json["course"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": orderId,
        "user_id": userId,
        "owner_user_id": ownerUserId,
        "course_id": courseId,
        "consultation_slot_id": consultationSlotId,
        "bundle_id": bundleId,
        "user_package_id": userPackageId,
        "completed_time": completedTime,
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "unit_price": unitPrice,
        "course": course.toJson(),
      };
}

class Course {
  final int id;
  final int courseType;
  final int difficultyLevelId;
  final String title;
  final String subtitle;
  final String description;
  final String price;
  final String oldPrice;
  final LearnerAccessibility learnerAccessibility;
  final String slug;
  final int status;
  final String averageRating;
  final int dripContent;
  final String imageUrl;
  final dynamic videoUrl;

  Course({
    required this.id,
    required this.courseType,
    required this.difficultyLevelId,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.learnerAccessibility,
    required this.slug,
    required this.status,
    required this.averageRating,
    required this.dripContent,
    required this.imageUrl,
    required this.videoUrl,
  });

  Course copyWith({
    int? id,
    int? courseType,
    int? difficultyLevelId,
    String? title,
    String? subtitle,
    String? description,
    String? price,
    String? oldPrice,
    LearnerAccessibility? learnerAccessibility,
    String? slug,
    int? status,
    String? averageRating,
    int? dripContent,
    String? imageUrl,
    dynamic videoUrl,
  }) =>
      Course(
        id: id ?? this.id,
        courseType: courseType ?? this.courseType,
        difficultyLevelId: difficultyLevelId ?? this.difficultyLevelId,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        description: description ?? this.description,
        price: price ?? this.price,
        oldPrice: oldPrice ?? this.oldPrice,
        learnerAccessibility: learnerAccessibility ?? this.learnerAccessibility,
        slug: slug ?? this.slug,
        status: status ?? this.status,
        averageRating: averageRating ?? this.averageRating,
        dripContent: dripContent ?? this.dripContent,
        imageUrl: imageUrl ?? this.imageUrl,
        videoUrl: videoUrl ?? this.videoUrl,
      );

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        courseType: json["course_type"],
        difficultyLevelId: json["difficulty_level_id"],
        title: json["title"],
        subtitle: json["subtitle"],
        description: json["description"],
        price: json["price"],
        oldPrice: json["old_price"],
        learnerAccessibility:
            learnerAccessibilityValues.map[json["learner_accessibility"]]!,
        slug: json["slug"],
        status: json["status"],
        averageRating: json["average_rating"],
        dripContent: json["drip_content"],
        imageUrl: json["image_url"],
        videoUrl: json["video_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "course_type": courseType,
        "difficulty_level_id": difficultyLevelId,
        "title": title,
        "subtitle": subtitle,
        "description": description,
        "price": price,
        "old_price": oldPrice,
        "learner_accessibility":
            learnerAccessibilityValues.reverse[learnerAccessibility],
        "slug": slug,
        "status": status,
        "average_rating": averageRating,
        "drip_content": dripContent,
        "image_url": imageUrl,
        "video_url": videoUrl,
      };
}

enum LearnerAccessibility { PAID }

final learnerAccessibilityValues =
    EnumValues({"paid": LearnerAccessibility.PAID});

class Link {
  final String url;
  final String label;
  final bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  Link copyWith({
    String? url,
    String? label,
    bool? active,
  }) =>
      Link(
        url: url ?? this.url,
        label: label ?? this.label,
        active: active ?? this.active,
      );

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
