// To parse this JSON data, do
//
//     final deliViewModel = deliViewModelFromJson(jsonString);

import 'dart:convert';

DeliViewModel deliViewModelFromJson(String str) =>
    DeliViewModel.fromJson(json.decode(str));

String deliViewModelToJson(DeliViewModel data) => json.encode(data.toJson());

class DeliViewModel {
  DeliViewModel({
    required this.deliId,
    required this.deliName,
    required this.deliType,
    required this.deliPic,
  });

  int deliId;
  String deliName;
  String deliType;
  String deliPic;

  factory DeliViewModel.fromJson(Map<String, dynamic> json) => DeliViewModel(
        deliId: json["deli_id"],
        deliName: json["deli_name"],
        deliType: json["deli_type"],
        deliPic: json["deli_pic"],
      );

  Map<String, dynamic> toJson() => {
        "deli_id": deliId,
        "deli_name": deliName,
        "deli_type": deliType,
        "deli_pic": deliPic,
      };
}
