// To parse this JSON data, do
//
//     final adrViewModel = adrViewModelFromJson(jsonString);

import 'dart:convert';

AdrViewModel adrViewModelFromJson(String str) =>
    AdrViewModel.fromJson(json.decode(str));

String adrViewModelToJson(AdrViewModel data) => json.encode(data.toJson());

class AdrViewModel {
  AdrViewModel({
    required this.userName,
    required this.userAdr,
    required this.prov,
    required this.provId,
    required this.amp,
    required this.ampId,
    required this.dict,
    required this.dictId,
    required this.postCode,
    required this.phone,
  });

  String userName;
  String userAdr;
  String prov;
  int provId;
  String amp;
  int ampId;
  String dict;
  String dictId;
  String postCode;
  String phone;

  factory AdrViewModel.fromJson(Map<String, dynamic> json) => AdrViewModel(
        userName: json["user_name"],
        userAdr: json["user_adr"],
        prov: json["prov"],
        provId: json["prov_id"],
        amp: json["amp"],
        ampId: json["amp_id"],
        dict: json["dict"],
        dictId: json["dict_id"],
        postCode: json["post_code"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "user_adr": userAdr,
        "prov": prov,
        "prov_id": provId,
        "amp": amp,
        "amp_id": ampId,
        "dict": dict,
        "dict_id": dictId,
        "post_code": postCode,
        "phone": phone,
      };
}
