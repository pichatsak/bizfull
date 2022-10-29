// To parse this JSON data, do
//
//     final slideModel = slideModelFromJson(jsonString);

import 'dart:convert';

SlideModel slideModelFromJson(String str) =>
    SlideModel.fromJson(json.decode(str));

String slideModelToJson(SlideModel data) => json.encode(data.toJson());

class SlideModel {
  SlideModel({
    required this.slId,
    required this.slPic,
    required this.slLink,
    required this.slType,
    required this.slLinkStatus,
    required this.slColor,
    required this.slCreate,
  });

  int slId;
  String slPic;
  String slLink;
  String slType;
  String slLinkStatus;
  String slColor;
  dynamic slCreate;

  factory SlideModel.fromJson(Map<String, dynamic> json) => SlideModel(
        slId: json["sl_id"],
        slPic: json["sl_pic"],
        slLink: json["sl_link"],
        slType: json["sl_type"],
        slLinkStatus: json["sl_link_status"],
        slColor: json["sl_color"],
        slCreate: json["sl_create"],
      );

  Map<String, dynamic> toJson() => {
        "sl_id": slId,
        "sl_pic": slPic,
        "sl_link": slLink,
        "sl_type": slType,
        "sl_link_status": slLinkStatus,
        "sl_color": slColor,
        "sl_create": slCreate.toIso8601String(),
      };
}
