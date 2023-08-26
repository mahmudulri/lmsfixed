import 'dart:convert';

ConsultationModel consultationModelFromJson(String str) =>
    ConsultationModel.fromJson(json.decode(str));

String consultationModelToJson(ConsultationModel data) =>
    json.encode(data.toJson());

class ConsultationModel {
  final bool? success;
  final String? message;
  final List<Datum>? data;

  ConsultationModel({
    this.success,
    this.message,
    this.data,
  });

  ConsultationModel copyWith({
    bool? success,
    String? message,
    List<Datum>? data,
  }) =>
      ConsultationModel(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory ConsultationModel.fromJson(Map<String, dynamic> json) =>
      ConsultationModel(
        success: json["success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  final int? id;
  final String? name;
  final String? email;
  final String? imageUrl;

  final String? professionalTitle;

  final String? slug;

  final int? hourlyRate;
  final String? hourlyOldRate;

  final int? averageRating;
  final int? totalRating;
  final List<Badge>? badges;

  Datum({
    this.id,
    this.name,
    this.email,
    this.imageUrl,
    this.professionalTitle,
    this.slug,
    this.hourlyRate,
    this.hourlyOldRate,
    this.averageRating,
    this.totalRating,
    this.badges,
  });

  Datum copyWith({
    int? id,
    String? name,
    String? email,
    String? imageUrl,
    String? professionalTitle,
    String? slug,
    int? hourlyRate,
    String? hourlyOldRate,
    int? averageRating,
    int? totalRating,
    List<Badge>? badges,
  }) =>
      Datum(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        imageUrl: imageUrl ?? this.imageUrl,
        professionalTitle: professionalTitle ?? this.professionalTitle,
        slug: slug ?? this.slug,
        hourlyRate: hourlyRate ?? this.hourlyRate,
        hourlyOldRate: hourlyOldRate ?? this.hourlyOldRate,
        averageRating: averageRating ?? this.averageRating,
        totalRating: totalRating ?? this.totalRating,
        badges: badges ?? this.badges,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        imageUrl: json["image_url"],
        professionalTitle: json["professional_title"],
        slug: json["slug"],
        hourlyRate: json["hourly_rate"],
        hourlyOldRate: json["hourly_old_rate"],
        averageRating: json["average_rating"],
        totalRating: json["total_rating"],
        badges: List<Badge>.from(json["badges"].map((x) => Badge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "image_url": imageUrl,
        "professional_title": professionalTitle,
        "slug": slug,
        "hourly_rate": hourlyRate,
        "hourly_old_rate": hourlyOldRate,
        "average_rating": averageRating,
        "total_rating": totalRating,
        "badges": List<dynamic>.from(badges!.map((x) => x.toJson())),
      };
}

class Badge {
  final String? name;
  final int? type;
  final String? from;
  final String? to;
  final String? description;
  final String? imageUrl;
  final Pivot? pivot;

  Badge({
    this.name,
    this.type,
    this.from,
    this.to,
    this.description,
    this.imageUrl,
    this.pivot,
  });

  Badge copyWith({
    String? name,
    int? type,
    String? from,
    String? to,
    String? description,
    String? imageUrl,
    Pivot? pivot,
  }) =>
      Badge(
        name: name ?? this.name,
        type: type ?? this.type,
        from: from ?? this.from,
        to: to ?? this.to,
        description: description ?? this.description,
        imageUrl: imageUrl ?? this.imageUrl,
        pivot: pivot ?? this.pivot,
      );

  factory Badge.fromJson(Map<String, dynamic> json) => Badge(
        name: json["name"],
        type: json["type"],
        from: json["from"],
        to: json["to"],
        description: json["description"],
        imageUrl: json["image_url"],
        pivot: Pivot.fromJson(json["pivot"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "from": from,
        "to": to,
        "description": description,
        "image_url": imageUrl,
        "pivot": pivot!.toJson(),
      };
}

class Pivot {
  final int userId;
  final int rankingLevelId;

  Pivot({
    required this.userId,
    required this.rankingLevelId,
  });

  Pivot copyWith({
    int? userId,
    int? rankingLevelId,
  }) =>
      Pivot(
        userId: userId ?? this.userId,
        rankingLevelId: rankingLevelId ?? this.rankingLevelId,
      );

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        userId: json["user_id"],
        rankingLevelId: json["ranking_level_id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "ranking_level_id": rankingLevelId,
      };
}
