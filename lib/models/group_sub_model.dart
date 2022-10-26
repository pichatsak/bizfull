// To parse this JSON data, do
//
//     final groupSubModel = groupSubModelFromJson(jsonString);

import 'dart:convert';

import 'package:bizfull/models/cate_model.dart';
import 'package:bizfull/models/product_model.dart';

GroupSubModel groupSubModelFromJson(String str) =>
    GroupSubModel.fromJson(json.decode(str));

String groupSubModelToJson(GroupSubModel data) => json.encode(data.toJson());

class GroupSubModel {
  GroupSubModel({
    required this.groupProductSubId,
    required this.groupTitle,
    required this.groupIcon,
    required this.groupCurency,
    required this.groupMain,
    required this.currencyId,
    required this.currencyName,
    required this.currencySymbol,
    required this.currencyRate,
    required this.currencyLevel,
    required this.productList,
    required this.cateList,
  });

  int groupProductSubId;
  String groupTitle;
  String groupIcon;
  int groupCurency;
  int groupMain;
  int currencyId;
  String currencyName;
  String currencySymbol;
  double currencyRate;
  int currencyLevel;
  List<ProductModel> productList;
  List<CategoryModel> cateList;

  factory GroupSubModel.fromJson(Map<String, dynamic> json) => GroupSubModel(
      groupProductSubId: json["group_product_sub_id"],
      groupTitle: json["group_title"],
      groupIcon: json["group_icon"],
      groupCurency: json["group_curency"],
      groupMain: json["group_main"],
      currencyId: json["currency_id"],
      currencyName: json["currency_name"],
      currencySymbol: json["currency_symbol"],
      currencyRate: json["currency_rate"],
      currencyLevel: json["currency_level"],
      productList: [],
      cateList: []);

  Map<String, dynamic> toJson() => {
        "group_product_sub_id": groupProductSubId,
        "group_title": groupTitle,
        "group_icon": groupIcon,
        "group_curency": groupCurency,
        "group_main": groupMain,
        "currency_id": currencyId,
        "currency_name": currencyName,
        "currency_symbol": currencySymbol,
        "currency_rate": currencyRate,
        "currency_level": currencyLevel,
      };
}
