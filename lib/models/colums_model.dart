// To parse this JSON data, do
//
//     final columsModel = columsModelFromJson(jsonString);

import 'dart:convert';

ColumsModel columsModelFromJson(String str) =>
    ColumsModel.fromJson(json.decode(str));

String columsModelToJson(ColumsModel data) => json.encode(data.toJson());

class ColumsModel {
  ColumsModel({
    required this.colId,
    required this.colTitle,
    required this.colDetail,
    required this.colCreate,
    required this.colUpdate,
    required this.colPic,
    required this.colYor,
  });

  int colId;
  String colTitle;
  String colDetail;
  dynamic colCreate;
  dynamic colUpdate;
  String colPic;
  String colYor;

  factory ColumsModel.fromJson(Map<String, dynamic> json) => ColumsModel(
        colId: json["col_id"],
        colTitle: json["col_title"],
        colDetail: json["col_detail"],
        colCreate: json["col_create"],
        colUpdate: json["col_update"],
        colPic: json["col_pic"],
        colYor: json["col_yor"],
      );

  Map<String, dynamic> toJson() => {
        "col_id": colId,
        "col_title": colTitle,
        "col_detail": colDetail,
        "col_create": colCreate.toIso8601String(),
        "col_update": colUpdate.toIso8601String(),
        "col_pic": colPic,
        "col_yor": colYor,
      };
}
