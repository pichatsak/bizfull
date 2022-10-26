// To parse this JSON data, do
//
//     final productPicMoreModel = productPicMoreModelFromJson(jsonString);

import 'dart:convert';

ProductPicMoreModel productPicMoreModelFromJson(String str) =>
    ProductPicMoreModel.fromJson(json.decode(str));

String productPicMoreModelToJson(ProductPicMoreModel data) =>
    json.encode(data.toJson());

class ProductPicMoreModel {
  ProductPicMoreModel({
    required this.ppmId,
    required this.ppmSrc,
    required this.productId,
  });

  int ppmId;
  String ppmSrc;
  int productId;

  factory ProductPicMoreModel.fromJson(Map<String, dynamic> json) =>
      ProductPicMoreModel(
        ppmId: json["ppm_id"],
        ppmSrc: json["ppm_src"],
        productId: json["product_id"],
      );

  Map<String, dynamic> toJson() => {
        "ppm_id": ppmId,
        "ppm_src": ppmSrc,
        "product_id": productId,
      };
}
