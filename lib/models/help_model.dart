// To parse this JSON data, do
//
//     final helpModel = helpModelFromJson(jsonString);

import 'dart:convert';

HelpModel helpModelFromJson(String str) => HelpModel.fromJson(json.decode(str));

String helpModelToJson(HelpModel data) => json.encode(data.toJson());

class HelpModel {
  HelpModel({
    required this.helpId,
    required this.helpTitle,
    required this.helpDetail,
  });

  int helpId;
  String helpTitle;
  String helpDetail;

  factory HelpModel.fromJson(Map<String, dynamic> json) => HelpModel(
        helpId: json["help_id"],
        helpTitle: json["help_title"],
        helpDetail: json["help_detail"],
      );

  Map<String, dynamic> toJson() => {
        "help_id": helpId,
        "help_title": helpTitle,
        "help_detail": helpDetail,
      };
}
