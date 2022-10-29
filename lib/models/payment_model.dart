// To parse this JSON data, do
//
//     final paymentModel = paymentModelFromJson(jsonString);

import 'dart:convert';

List<PaymentModel> paymentModelFromJson(String str) => List<PaymentModel>.from(
    json.decode(str).map((x) => PaymentModel.fromJson(x)));

String paymentModelToJson(List<PaymentModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PaymentModel {
  PaymentModel({
    required this.payId,
    required this.payType,
    required this.payName,
    required this.payBankName,
    required this.payBankNo,
    required this.payBank,
    required this.payPrombtName,
    required this.payPrombtNo,
    required this.payPrombtBank,
    required this.payWallName,
    required this.payWallNo,
    required this.payImg,
    required this.payQr,
  });

  int payId;
  String payType;
  String payName;
  String payBankName;
  String payBankNo;
  String payBank;
  String payPrombtName;
  String payPrombtNo;
  String payPrombtBank;
  String payWallName;
  String payWallNo;
  String payImg;
  String payQr;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
        payId: json["pay_id"],
        payType: json["pay_type"],
        payName: json["pay_name"],
        payBankName: json["pay_bank_name"],
        payBankNo: json["pay_bank_no"],
        payBank: json["pay_bank"],
        payPrombtName: json["pay_prombt_name"],
        payPrombtNo: json["pay_prombt_no"],
        payPrombtBank: json["pay_prombt_bank"],
        payWallName: json["pay_wall_name"],
        payWallNo: json["pay_wall_no"],
        payImg: json["pay_img"],
        payQr: json["pay_qr"],
      );

  Map<String, dynamic> toJson() => {
        "pay_id": payId,
        "pay_type": payType,
        "pay_name": payName,
        "pay_bank_name": payBankName,
        "pay_bank_no": payBankNo,
        "pay_bank": payBank,
        "pay_prombt_name": payPrombtName,
        "pay_prombt_no": payPrombtNo,
        "pay_prombt_bank": payPrombtBank,
        "pay_wall_name": payWallName,
        "pay_wall_no": payWallNo,
        "pay_img": payImg,
        "pay_qr": payQr,
      };
}
