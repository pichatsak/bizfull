// To parse this JSON data, do
//
//     final contactModel = contactModelFromJson(jsonString);

import 'dart:convert';

ContactModel contactModelFromJson(String str) =>
    ContactModel.fromJson(json.decode(str));

String contactModelToJson(ContactModel data) => json.encode(data.toJson());

class ContactModel {
  ContactModel({
    required this.ctId,
    required this.ctAdr,
    required this.ctProv,
    required this.ctAmp,
    required this.ctDict,
    required this.ctPost,
    required this.ctPhone,
    required this.ctEmail,
    required this.ctFacebook,
    required this.ctLine,
    required this.ctInsta,
    required this.id,
    required this.code,
    required this.nameTh,
    required this.nameEn,
    required this.geographyId,
    required this.provinceId,
    required this.zipCode,
    required this.amphureId,
    required this.prov,
    required this.amp,
    required this.dict,
  });

  int ctId;
  String ctAdr;
  int ctProv;
  int ctAmp;
  int ctDict;
  String ctPost;
  String ctPhone;
  String ctEmail;
  String ctFacebook;
  String ctLine;
  String ctInsta;
  String id;
  String code;
  String nameTh;
  String nameEn;
  int geographyId;
  int provinceId;
  int zipCode;
  int amphureId;
  String prov;
  String amp;
  String dict;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        ctId: json["ct_id"],
        ctAdr: json["ct_adr"],
        ctProv: json["ct_prov"],
        ctAmp: json["ct_amp"],
        ctDict: json["ct_dict"],
        ctPost: json["ct_post"],
        ctPhone: json["ct_phone"],
        ctEmail: json["ct_email"],
        ctFacebook: json["ct_facebook"],
        ctLine: json["ct_line"],
        ctInsta: json["ct_insta"],
        id: json["id"],
        code: json["code"],
        nameTh: json["name_th"],
        nameEn: json["name_en"],
        geographyId: json["geography_id"],
        provinceId: json["province_id"],
        zipCode: json["zip_code"],
        amphureId: json["amphure_id"],
        prov: json["prov"],
        amp: json["amp"],
        dict: json["dict"],
      );

  Map<String, dynamic> toJson() => {
        "ct_id": ctId,
        "ct_adr": ctAdr,
        "ct_prov": ctProv,
        "ct_amp": ctAmp,
        "ct_dict": ctDict,
        "ct_post": ctPost,
        "ct_phone": ctPhone,
        "ct_email": ctEmail,
        "ct_facebook": ctFacebook,
        "ct_line": ctLine,
        "ct_insta": ctInsta,
        "id": id,
        "code": code,
        "name_th": nameTh,
        "name_en": nameEn,
        "geography_id": geographyId,
        "province_id": provinceId,
        "zip_code": zipCode,
        "amphure_id": amphureId,
        "prov": prov,
        "amp": amp,
        "dict": dict,
      };
}
