// To parse this JSON data, do
//
//     final categoryModelCb = categoryModelCbFromJson(jsonString);

import 'dart:convert';

List<CategoryModelCb> categoryModelCbFromJson(String str) =>
    List<CategoryModelCb>.from(
        json.decode(str).map((x) => CategoryModelCb.fromJson(x)));

String categoryModelCbToJson(List<CategoryModelCb> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModelCb {
  CategoryModelCb({
    required this.categoryId,
    required this.categoryName,
    required this.categoryPic,
    required this.isCheck,
  });

  int categoryId;
  String categoryName;
  String categoryPic;
  bool isCheck;

  factory CategoryModelCb.fromJson(Map<String, dynamic> json) =>
      CategoryModelCb(
          categoryId: json["category_id"],
          categoryName: json["category_name"],
          categoryPic: json["category_pic"],
          isCheck: false);

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "category_name": categoryName,
        "category_pic": categoryPic,
      };
}
