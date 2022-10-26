// To parse this JSON data, do
//
//     final groupDataModel = groupDataModelFromJson(jsonString);

import 'dart:convert';

import 'package:bizfull/models/group_sub_model.dart';

GroupDataModel groupDataModelFromJson(String str) =>
    GroupDataModel.fromJson(json.decode(str));

String groupDataModelToJson(GroupDataModel data) => json.encode(data.toJson());

class GroupDataModel {
  GroupDataModel({
    required this.groupProductId,
    required this.typeShow,
    required this.txtHead,
    required this.txtSize,
    required this.txtColor,
    required this.pic,
    required this.typeProduct,
    required this.listGroupSub,
  });

  int groupProductId;
  String typeShow;
  String txtHead;
  int txtSize;
  String txtColor;
  String pic;
  String typeProduct;
  List<GroupSubModel> listGroupSub;

  factory GroupDataModel.fromJson(Map<String, dynamic> json) => GroupDataModel(
      groupProductId: json["group_product_id"],
      typeShow: json["type_show"],
      txtHead: json["txt_head"],
      txtSize: json["txt_size"],
      txtColor: json["txt_color"],
      pic: json["pic"],
      typeProduct: json["type_product"],
      listGroupSub: []);

  Map<String, dynamic> toJson() => {
        "group_product_id": groupProductId,
        "type_show": typeShow,
        "txt_head": txtHead,
        "txt_size": txtSize,
        "txt_color": txtColor,
        "pic": pic,
        "type_product": typeProduct,
      };
}
