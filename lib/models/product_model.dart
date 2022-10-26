// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.pdId,
    required this.pdName,
    required this.pdPic,
    required this.pdCate,
    required this.pdGroup,
    required this.pdGroupSub,
    required this.pdDetail,
    required this.pdType,
    required this.pdTypePrice,
    required this.pdPrice,
    required this.pdPriceSale,
    required this.pdStatusSale,
    required this.pdSelled,
    required this.pdAmount,
    required this.pdStar,
    required this.pdPoint,
    required this.pdCreate,
    required this.pdUpdate,
    required this.pdPriceEnd,
    required this.productLink,
  });

  int pdId;
  String pdName;
  String pdPic;
  int pdCate;
  int pdGroup;
  int pdGroupSub;
  String pdDetail;
  String pdType;
  String pdTypePrice;
  double pdPrice;
  double pdPriceSale;
  String pdStatusSale;
  int pdSelled;
  int pdAmount;
  int pdStar;
  int pdPoint;
  dynamic pdCreate;
  dynamic pdUpdate;
  String productLink;
  double pdPriceEnd;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        pdId: json["pd_id"],
        pdName: json["pd_name"],
        pdPic: json["pd_pic"],
        pdCate: json["pd_cate"],
        pdGroup: json["pd_group"],
        pdGroupSub: json["pd_group_sub"],
        pdDetail: json["pd_detail"],
        pdType: json["pd_type"],
        pdTypePrice: json["pd_type_price"],
        pdPrice: json["pd_price"],
        pdPriceSale: json["pd_price_sale"],
        pdStatusSale: json["pd_status_sale"],
        pdSelled: json["pd_selled"],
        pdAmount: json["pd_amount"],
        pdStar: json["pd_star"],
        pdPoint: json["pd_point"],
        pdCreate: json["pd_create"],
        pdUpdate: json["pd_update"],
        productLink: json["product_link"],
        pdPriceEnd: json["pd_price_end"],
      );

  Map<String, dynamic> toJson() => {
        "pd_id": pdId,
        "pd_name": pdName,
        "pd_pic": pdPic,
        "pd_cate": pdCate,
        "pd_group": pdGroup,
        "pd_group_sub": pdGroupSub,
        "pd_detail": pdDetail,
        "pd_type": pdType,
        "pd_type_price": pdTypePrice,
        "pd_price": pdPrice,
        "pd_price_sale": pdPriceSale,
        "pd_status_sale": pdStatusSale,
        "pd_selled": pdSelled,
        "pd_amount": pdAmount,
        "pd_star": pdStar,
        "pd_point": pdPoint,
        "pd_create": pdCreate.toIso8601String(),
        "pd_update": pdUpdate.toIso8601String(),
        "product_link": productLink,
      };
}
