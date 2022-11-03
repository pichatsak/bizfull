// To parse this JSON data, do
//
//     final orderViewModel = orderViewModelFromJson(jsonString);

import 'dart:convert';

OrderViewModel orderViewModelFromJson(String str) =>
    OrderViewModel.fromJson(json.decode(str));

String orderViewModelToJson(OrderViewModel data) => json.encode(data.toJson());

class OrderViewModel {
  OrderViewModel({
    required this.odId,
    required this.noOd,
    required this.totalAll,
    required this.total,
    required this.totalShop,
    required this.totalShip,
    required this.totalDisc,
    required this.discId,
    required this.typeOd,
    required this.delisShop,
    required this.delisShip,
    required this.delisName,
    required this.delisPhone,
    required this.delisHome,
    required this.delisProv,
    required this.delisAmp,
    required this.delisDict,
    required this.delisPost,
    required this.userId,
    required this.typePaysShip,
    required this.fullAdr,
    required this.typePaysShop,
    required this.odStatus,
    required this.odCreate,
    required this.odPayDate,
    required this.saleName,
    required this.saleId,
    required this.id,
    required this.code,
    required this.nameTh,
    required this.nameEn,
    required this.geographyId,
    required this.provinceId,
    required this.zipCode,
    required this.amphureId,
    required this.prov,
    required this.provId,
    required this.amp,
    required this.ampId,
    required this.dict,
    required this.dictId,
    required this.numAll,
  });

  int odId;
  String noOd;
  double totalAll;
  double total;
  double totalShop;
  double totalShip;
  double totalDisc;
  int discId;
  String typeOd;
  int delisShop;
  int delisShip;
  String delisName;
  String delisPhone;
  String delisHome;
  int delisProv;
  int delisAmp;
  int delisDict;
  String delisPost;
  int userId;
  int typePaysShip;
  String fullAdr;
  int typePaysShop;
  String odStatus;
  dynamic odCreate;
  dynamic odPayDate;
  String saleName;
  int saleId;
  String id;
  String code;
  String nameTh;
  String nameEn;
  int geographyId;
  int provinceId;
  int zipCode;
  int amphureId;
  String prov;
  int provId;
  String amp;
  int ampId;
  String dict;
  String dictId;
  int numAll;

  factory OrderViewModel.fromJson(Map<String, dynamic> json) => OrderViewModel(
        odId: json["od_id"],
        noOd: json["no_od"],
        totalAll: json["total_all"].toDouble(),
        total: json["total"].toDouble().toDouble(),
        totalShop: json["total_shop"].toDouble(),
        totalShip: json["total_ship"].toDouble(),
        totalDisc: json["total_disc"].toDouble(),
        discId: json["disc_id"],
        typeOd: json["type_od"],
        delisShop: json["delis_shop"],
        delisShip: json["delis_ship"],
        delisName: json["delis_name"],
        delisPhone: json["delis_phone"],
        delisHome: json["delis_home"],
        delisProv: json["delis_prov"],
        delisAmp: json["delis_amp"],
        delisDict: json["delis_dict"],
        delisPost: json["delis_post"],
        userId: json["user_id"],
        typePaysShip: json["type_pays_ship"],
        fullAdr: json["full_adr"],
        typePaysShop: json["type_pays_shop"],
        odStatus: json["od_status"],
        odCreate: json["od_create"],
        odPayDate: json["od_pay_date"],
        saleName: json["sale_name"],
        saleId: json["sale_id"],
        id: json["id"],
        code: json["code"],
        nameTh: json["name_th"],
        nameEn: json["name_en"],
        geographyId: json["geography_id"],
        provinceId: json["province_id"],
        zipCode: json["zip_code"],
        amphureId: json["amphure_id"],
        prov: json["prov"],
        provId: json["prov_id"],
        amp: json["amp"],
        ampId: json["amp_id"],
        dict: json["dict"],
        dictId: json["dict_id"],
        numAll: json["num_all"],
      );

  Map<String, dynamic> toJson() => {
        "od_id": odId,
        "no_od": noOd,
        "total_all": totalAll,
        "total": total,
        "total_shop": totalShop,
        "total_ship": totalShip,
        "total_disc": totalDisc,
        "disc_id": discId,
        "type_od": typeOd,
        "delis_shop": delisShop,
        "delis_ship": delisShip,
        "delis_name": delisName,
        "delis_phone": delisPhone,
        "delis_home": delisHome,
        "delis_prov": delisProv,
        "delis_amp": delisAmp,
        "delis_dict": delisDict,
        "delis_post": delisPost,
        "user_id": userId,
        "type_pays_ship": typePaysShip,
        "full_adr": fullAdr,
        "type_pays_shop": typePaysShop,
        "od_status": odStatus,
        "od_create": odCreate.toIso8601String(),
        "od_pay_date": odPayDate.toIso8601String(),
        "sale_name": saleName,
        "sale_id": saleId,
        "id": id,
        "code": code,
        "name_th": nameTh,
        "name_en": nameEn,
        "geography_id": geographyId,
        "province_id": provinceId,
        "zip_code": zipCode,
        "amphure_id": amphureId,
        "prov": prov,
        "prov_id": provId,
        "amp": amp,
        "amp_id": ampId,
        "dict": dict,
        "dict_id": dictId,
      };
}
