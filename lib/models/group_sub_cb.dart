// To parse this JSON data, do
//
//     final groupSubCbModel = groupSubCbModelFromJson(jsonString);

import 'dart:convert';

GroupSubCbModel groupSubCbModelFromJson(String str) =>
    GroupSubCbModel.fromJson(json.decode(str));

String groupSubCbModelToJson(GroupSubCbModel data) =>
    json.encode(data.toJson());

class GroupSubCbModel {
  GroupSubCbModel({
    required this.groupProductSubId,
    required this.groupTitle,
    required this.groupIcon,
    required this.groupCurency,
    required this.groupMain,
    required this.groupProductId,
    required this.typeShow,
    required this.txtHead,
    required this.txtSize,
    required this.txtColor,
    required this.pic,
    required this.typeProduct,
    required this.isCheck,
  });

  int groupProductSubId;
  String groupTitle;
  String groupIcon;
  int groupCurency;
  int groupMain;
  int groupProductId;
  String typeShow;
  String txtHead;
  int txtSize;
  String txtColor;
  String pic;
  String typeProduct;
  bool isCheck;

  factory GroupSubCbModel.fromJson(Map<String, dynamic> json) =>
      GroupSubCbModel(
        groupProductSubId: json["group_product_sub_id"],
        groupTitle: json["group_title"],
        groupIcon: json["group_icon"],
        groupCurency: json["group_curency"],
        groupMain: json["group_main"],
        groupProductId: json["group_product_id"],
        typeShow: json["type_show"],
        txtHead: json["txt_head"],
        txtSize: json["txt_size"],
        txtColor: json["txt_color"],
        pic: json["pic"],
        typeProduct: json["type_product"],
        isCheck: false,
      );

  Map<String, dynamic> toJson() => {
        "group_product_sub_id": groupProductSubId,
        "group_title": groupTitle,
        "group_icon": groupIcon,
        "group_curency": groupCurency,
        "group_main": groupMain,
        "group_product_id": groupProductId,
        "type_show": typeShow,
        "txt_head": txtHead,
        "txt_size": txtSize,
        "txt_color": txtColor,
        "pic": pic,
        "type_product": typeProduct,
      };
}
