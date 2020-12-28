// To parse this JSON data, do
//
//     final breakingNewsModel = breakingNewsModelFromJson(jsonString);

import 'dart:convert';

BreakingNewsModel breakingNewsModelFromJson(String str) => BreakingNewsModel.fromJson(json.decode(str));

String breakingNewsModelToJson(BreakingNewsModel data) => json.encode(data.toJson());

class BreakingNewsModel {
  BreakingNewsModel({
    this.title,
    this.launchDate,
    this.founder,
    this.todaysDate,
    this.status,
    this.msg,
    this.responseTime,
    this.success,
    this.api,
    this.totalNoOfPages,
    this.showingResult,
    this.result,
  });

  String title;
  String launchDate;
  String founder;
  String todaysDate;
  bool status;
  String msg;
  String responseTime;
  bool success;
  String api;
  int totalNoOfPages;
  int showingResult;
  List<Result> result;

  factory BreakingNewsModel.fromJson(Map<String, dynamic> json) => BreakingNewsModel(
    title: json["Title"] == null ? null : json["Title"],
    launchDate: json["Launch_date"] == null ? null : json["Launch_date"],
    founder: json["Founder"] == null ? null : json["Founder"],
    todaysDate: json["Todays_date"] == null ? null : json["Todays_date"],
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    responseTime: json["Response_time"] == null ? null : json["Response_time"],
    success: json["success"] == null ? null : json["success"],
    api: json["Api"] == null ? null : json["Api"],
    totalNoOfPages: json["Total_no_of_pages"] == null ? null : json["Total_no_of_pages"],
    showingResult: json["Showing_result"] == null ? null : json["Showing_result"],
    result: json["Result"] == null ? null : List<Result>.from(json["Result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Title": title == null ? null : title,
    "Launch_date": launchDate == null ? null : launchDate,
    "Founder": founder == null ? null : founder,
    "Todays_date": todaysDate == null ? null : todaysDate,
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "Response_time": responseTime == null ? null : responseTime,
    "success": success == null ? null : success,
    "Api": api == null ? null : api,
    "Total_no_of_pages": totalNoOfPages == null ? null : totalNoOfPages,
    "Showing_result": showingResult == null ? null : showingResult,
    "Result": result == null ? null : List<dynamic>.from(result.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.id,
    this.title,
    this.categoryId,
    this.categoryName,
    this.tags,
    this.shotDesc,
    this.description,
    this.postUrl,
    this.images,
    this.createdAt,
  });

  String id;
  String title;
  String categoryId;
  String categoryName;
  dynamic tags;
  String shotDesc;
  String description;
  String postUrl;
  Images images;
  DateTime createdAt;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    categoryId: json["category_id"] == null ? null : json["category_id"],
    categoryName: json["category_name"] == null ? null : json["category_name"],
    tags: json["tags"],
    shotDesc: json["shot_desc"] == null ? null : json["shot_desc"],
    description: json["description"] == null ? null : json["description"],
    postUrl: json["post_url"] == null ? null : json["post_url"],
    images: json["images"] == null ? null : Images.fromJson(json["images"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "category_id": categoryId == null ? null : categoryId,
    "category_name": categoryName == null ? null : categoryName,
    "tags": tags,
    "shot_desc": shotDesc == null ? null : shotDesc,
    "description": description == null ? null : description,
    "post_url": postUrl == null ? null : postUrl,
    "images": images == null ? null : images.toJson(),
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
  };
}

class Images {
  Images({
    this.imageDefault,
    this.imageBig,
    this.imageSlider,
    this.imageMid,
    this.imageSmall,
  });

  String imageDefault;
  String imageBig;
  String imageSlider;
  String imageMid;
  String imageSmall;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    imageDefault: json["image_default"] == null ? null : json["image_default"],
    imageBig: json["image_big"] == null ? null : json["image_big"],
    imageSlider: json["image_slider"] == null ? null : json["image_slider"],
    imageMid: json["image_mid"] == null ? null : json["image_mid"],
    imageSmall: json["image_small"] == null ? null : json["image_small"],
  );

  Map<String, dynamic> toJson() => {
    "image_default": imageDefault == null ? null : imageDefault,
    "image_big": imageBig == null ? null : imageBig,
    "image_slider": imageSlider == null ? null : imageSlider,
    "image_mid": imageMid == null ? null : imageMid,
    "image_small": imageSmall == null ? null : imageSmall,
  };
}
