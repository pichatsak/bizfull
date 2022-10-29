// To parse this JSON data, do
//
//     final discoutViewModel = discoutViewModelFromJson(jsonString);

import 'dart:convert';

DiscoutViewModel discoutViewModelFromJson(String str) =>
    DiscoutViewModel.fromJson(json.decode(str));

String discoutViewModelToJson(DiscoutViewModel data) =>
    json.encode(data.toJson());

class DiscoutViewModel {
  DiscoutViewModel({
    required this.discountId,
    required this.discountPrice,
    required this.discountStart,
    required this.discountEnd,
    required this.active,
    required this.discountType,
    required this.discountNum,
    required this.discountFirst,
    required this.discountCreate,
  });

  int discountId;
  int discountPrice;
  DateTime discountStart;
  DateTime discountEnd;
  String active;
  String discountType;
  int discountNum;
  int discountFirst;
  DateTime discountCreate;

  factory DiscoutViewModel.fromJson(Map<String, dynamic> json) =>
      DiscoutViewModel(
        discountId: json["discount_id"],
        discountPrice: json["discount_price"],
        discountStart: json["discount_start"],
        discountEnd: json["discount_end"],
        active: json["active"],
        discountType: json["discount_type"],
        discountNum: json["discount_num"],
        discountFirst: json["discount_first"],
        discountCreate: json["discount_create"],
      );

  Map<String, dynamic> toJson() => {
        "discount_id": discountId,
        "discount_price": discountPrice,
        "discount_start":
            "${discountStart.year.toString().padLeft(4, '0')}-${discountStart.month.toString().padLeft(2, '0')}-${discountStart.day.toString().padLeft(2, '0')}",
        "discount_end":
            "${discountEnd.year.toString().padLeft(4, '0')}-${discountEnd.month.toString().padLeft(2, '0')}-${discountEnd.day.toString().padLeft(2, '0')}",
        "active": active,
        "discount_type": discountType,
        "discount_num": discountNum,
        "discount_first": discountFirst,
        "discount_create": discountCreate.toIso8601String(),
      };
}
