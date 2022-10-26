// To parse this JSON data, do
//
//     final priceMoreModel = priceMoreModelFromJson(jsonString);

import 'dart:convert';

PriceMoreModel priceMoreModelFromJson(String str) =>
    PriceMoreModel.fromJson(json.decode(str));

String priceMoreModelToJson(PriceMoreModel data) => json.encode(data.toJson());

class PriceMoreModel {
  PriceMoreModel({
    required this.pdmId,
    required this.pdmName,
    required this.pdmPrice,
    required this.pdmStatusSale,
    required this.pdmPriceSale,
    required this.productId,
  });

  int pdmId;
  String pdmName;
  double pdmPrice;
  String pdmStatusSale;
  double pdmPriceSale;
  int productId;

  factory PriceMoreModel.fromJson(Map<String, dynamic> json) => PriceMoreModel(
        pdmId: json["pdm_id"],
        pdmName: json["pdm_name"],
        pdmPrice: json["pdm_price"],
        pdmStatusSale: json["pdm_status_sale"],
        pdmPriceSale: json["pdm_price_sale"],
        productId: json["product_id"],
      );

  Map<String, dynamic> toJson() => {
        "pdm_id": pdmId,
        "pdm_name": pdmName,
        "pdm_price": pdmPrice,
        "pdm_status_sale": pdmStatusSale,
        "pdm_price_sale": pdmPriceSale,
        "product_id": productId,
      };
}
