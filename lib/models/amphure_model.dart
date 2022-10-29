// To parse this JSON data, do
//
//     final amphurModel = amphurModelFromJson(jsonString);

import 'dart:convert';

List<AmphurModel> amphurModelFromJson(String str) => List<AmphurModel>.from(
    json.decode(str).map((x) => AmphurModel.fromJson(x)));

String amphurModelToJson(List<AmphurModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AmphurModel {
  AmphurModel({
    required this.id,
    required this.code,
    required this.nameTh,
    required this.nameEn,
    required this.provinceId,
  });

  int id;
  String code;
  String nameTh;
  String nameEn;
  int provinceId;

  factory AmphurModel.fromJson(Map<String, dynamic> json) => AmphurModel(
        id: json["id"],
        code: json["code"],
        nameTh: json["name_th"],
        nameEn: json["name_en"],
        provinceId: json["province_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name_th": nameTh,
        "name_en": nameEn,
        "province_id": provinceId,
      };
}
