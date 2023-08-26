import 'dart:convert';
import 'dart:ffi';

CurriculumModel curriculumModelFromJson(String str) =>
    CurriculumModel.fromJson(json.decode(str));

String curriculumModelToJson(CurriculumModel data) =>
    json.encode(data.toJson());

class CurriculumModel {
  final bool? success;
  final String? message;
  final List<Datum>? data;

  CurriculumModel({
    this.success,
    this.message,
    this.data,
  });

  CurriculumModel copyWith({
    bool? success,
    String? message,
    List<Datum>? data,
  }) =>
      CurriculumModel(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory CurriculumModel.fromJson(Map<String, dynamic> json) =>
      CurriculumModel(
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
  final String? name;
  final String? shortDescription;

  final List<Lecture>? lectures;

  Datum({
    this.name,
    this.shortDescription,
    this.lectures,
  });

  Datum copyWith({
    String? name,
    dynamic shortDescription,
    List<Lecture>? lectures,
  }) =>
      Datum(
        name: name ?? this.name,
        shortDescription: shortDescription ?? this.shortDescription,
        lectures: lectures ?? this.lectures,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        shortDescription: json["short_description"] == null
            ? " No description"
            : json["short_description"],
        lectures: List<Lecture>.from(
            json["lectures"].map((x) => Lecture.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "short_description": shortDescription,
        "lectures": List<dynamic>.from(lectures!.map((x) => x.toJson())),
      };
}

class Lecture {
  final int courseId;

  final String title;

  final String fileSize;
  final String fileDuration;

  final String? text;
  final String? image;
  final String? pdf;
  final String? slideDocument;
  final String? audio;

  final String? fileUrl;
  final String? imageUrl;
  final String? pdfUrl;
  final String? audioUrl;

  Lecture({
    required this.courseId,
    required this.title,
    required this.fileSize,
    required this.fileDuration,
    this.text,
    this.image,
    this.pdf,
    this.slideDocument,
    this.audio,
    this.fileUrl,
    this.imageUrl,
    this.pdfUrl,
    this.audioUrl,
  });

  // Lecture copyWith({

  //   int? courseId,

  //   String? title,
  //   int? lectureType,

  //   String? fileSize,
  //   String? fileDuration,

  //   String? type,

  //   dynamic text,
  //   dynamic image,
  //   dynamic pdf,
  //   dynamic slideDocument,
  //   dynamic audio,

  //   String? fileUrl,
  //   String? imageUrl,
  //   String? pdfUrl,
  //   dynamic audioUrl,
  // }) =>
  //     Lecture(

  //       courseId: courseId ?? this.courseId,

  //       title: title ?? this.title,
  //       lectureType: lectureType ?? this.lectureType,

  //       fileSize: fileSize ?? this.fileSize,
  //       fileDuration: fileDuration ?? this.fileDuration,

  //       type: type ?? this.type,

  //       text: text ?? this.text,
  //       image: image ?? this.image,
  //       pdf: pdf ?? this.pdf,
  //       slideDocument: slideDocument ?? this.slideDocument,
  //       audio: audio ?? this.audio,

  //       fileUrl: fileUrl ?? this.fileUrl,
  //       imageUrl: imageUrl ?? this.imageUrl,
  //       pdfUrl: pdfUrl ?? this.pdfUrl,
  //       audioUrl: audioUrl ?? this.audioUrl,

  //     );

  factory Lecture.fromJson(Map<String, dynamic> json) => Lecture(
        courseId: json["course_id"],
        title: json["title"],
        fileSize: json["file_size"],
        fileDuration: json["file_duration"],
        text: json["text"] == null ? "No Data" : json["text"],
        image: json["image"] == null ? null : json["image"],
        pdf: json["pdf"] == null ? null : json["pdf"],
        slideDocument:
            json["slide_document"] == null ? null : json["slide_document"],
        audio: json["audio"] == null ? null : json["audio"],
        fileUrl: json["file_url"] == null ? null : json["file_url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        pdfUrl: json["pdf_url"] == null ? null : json["pdf_url"],
        audioUrl: json["audio_url"] == null ? null : json["audio_url"],
      );

  Map<String, dynamic> toJson() => {
        "course_id": courseId,
        "title": title,
        "file_size": fileSize,
        "file_duration": fileDuration,
        "text": text,
        "image": image,
        "pdf": pdf,
        "slide_document": slideDocument,
        "audio": audio,
        "file_url": fileUrl,
        "image_url": imageUrl,
        "pdf_url": pdfUrl,
        "audio_url": audioUrl,
      };
}
