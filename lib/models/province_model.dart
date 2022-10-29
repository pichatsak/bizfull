// To parse this JSON data, do
//
//     final proviceModel = proviceModelFromJson(jsonString);

import 'dart:convert';

List<ProviceModel> proviceModelFromJson(String str) => List<ProviceModel>.from(
    json.decode(str).map((x) => ProviceModel.fromJson(x)));

String proviceModelToJson(List<ProviceModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProviceModel {
  ProviceModel({
    required this.id,
    required this.code,
    required this.nameTh,
    required this.nameEn,
    required this.geographyId,
  });

  int id;
  String code;
  String nameTh;
  String nameEn;
  int geographyId;

  factory ProviceModel.fromJson(Map<String, dynamic> json) => ProviceModel(
        id: json["id"],
        code: json["code"],
        nameTh: json["name_th"],
        nameEn: json["name_en"],
        geographyId: json["geography_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name_th": nameTh,
        "name_en": nameEn,
        "geography_id": geographyId,
      };
}
