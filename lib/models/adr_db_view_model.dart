// To parse this JSON data, do
//
//     final adrDbViewModel = adrDbViewModelFromJson(jsonString);

import 'dart:convert';

AdrDbViewModel adrDbViewModelFromJson(String str) =>
    AdrDbViewModel.fromJson(json.decode(str));

String adrDbViewModelToJson(AdrDbViewModel data) => json.encode(data.toJson());

class AdrDbViewModel {
  AdrDbViewModel({
    required this.adrsId,
    required this.adrsName,
    required this.adrsHome,
    required this.adrsPhone,
    required this.prov,
    required this.provId,
    required this.amp,
    required this.ampId,
    required this.dict,
    required this.dictId,
    required this.postCode,
  });

  int adrsId;
  String adrsName;
  String adrsHome;
  String adrsPhone;
  String prov;
  int provId;
  String amp;
  int ampId;
  String dict;
  String dictId;
  String postCode;

  factory AdrDbViewModel.fromJson(Map<String, dynamic> json) => AdrDbViewModel(
        adrsId: json["adrs_id"],
        adrsName: json["adrs_name"],
        adrsHome: json["adrs_home"],
        adrsPhone: json["adrs_phone"],
        prov: json["prov"],
        provId: json["prov_id"],
        amp: json["amp"],
        ampId: json["amp_id"],
        dict: json["dict"],
        dictId: json["dict_id"],
        postCode: json["post_code"],
      );

  Map<String, dynamic> toJson() => {
        "adrs_id": adrsId,
        "adrs_name": adrsName,
        "adrs_home": adrsHome,
        "adrs_phone": adrsPhone,
        "prov": prov,
        "prov_id": provId,
        "amp": amp,
        "amp_id": ampId,
        "dict": dict,
        "dict_id": dictId,
        "post_code": postCode,
      };
}
