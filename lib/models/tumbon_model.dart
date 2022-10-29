// To parse this JSON data, do
//
//     final dictrictModel = dictrictModelFromJson(jsonString);

import 'dart:convert';

List<DictrictModel> dictrictModelFromJson(String str) =>
    List<DictrictModel>.from(
        json.decode(str).map((x) => DictrictModel.fromJson(x)));

String dictrictModelToJson(List<DictrictModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DictrictModel {
  DictrictModel({
    required this.id,
    required this.zipCode,
    required this.nameTh,
    required this.nameEn,
    required this.amphureId,
  });

  String id;
  int zipCode;
  String nameTh;
  String nameEn;
  int amphureId;

  factory DictrictModel.fromJson(Map<String, dynamic> json) => DictrictModel(
        id: json["id"],
        zipCode: json["zip_code"],
        nameTh: json["name_th"],
        nameEn: json["name_en"],
        amphureId: json["amphure_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "zip_code": zipCode,
        "name_th": nameTh,
        "name_en": nameEn,
        "amphure_id": amphureId,
      };
}
