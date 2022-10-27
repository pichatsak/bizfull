// To parse this JSON data, do
//
//     final vdoRecomModel = vdoRecomModelFromJson(jsonString);

import 'dart:convert';

VdoRecomModel vdoRecomModelFromJson(String str) =>
    VdoRecomModel.fromJson(json.decode(str));

String vdoRecomModelToJson(VdoRecomModel data) => json.encode(data.toJson());

class VdoRecomModel {
  VdoRecomModel({
    required this.vdorId,
    required this.vdorSrc,
    required this.vdorTitle,
    required this.vdorCreate,
    required this.vdorUpdate,
    required this.vdorPic,
  });

  int vdorId;
  String vdorSrc;
  String vdorTitle;
  String vdorCreate;
  dynamic vdorUpdate;
  String vdorPic;

  factory VdoRecomModel.fromJson(Map<String, dynamic> json) => VdoRecomModel(
        vdorId: json["vdor_id"],
        vdorSrc: json["vdor_src"],
        vdorTitle: json["vdor_title"],
        vdorCreate: json["vdor_create"],
        vdorUpdate: json["vdor_update"],
        vdorPic: json["vdor_pic"],
      );

  Map<String, dynamic> toJson() => {
        "vdor_id": vdorId,
        "vdor_src": vdorSrc,
        "vdor_title": vdorTitle,
        "vdor_create": vdorCreate,
        "vdor_update": vdorUpdate.toIso8601String(),
        "vdor_pic": vdorPic,
      };
}
