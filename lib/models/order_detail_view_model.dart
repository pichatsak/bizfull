// To parse this JSON data, do
//
//     final orderDetailViewModel = orderDetailViewModelFromJson(jsonString);

import 'dart:convert';

OrderDetailViewModel orderDetailViewModelFromJson(String str) =>
    OrderDetailViewModel.fromJson(json.decode(str));

String orderDetailViewModelToJson(OrderDetailViewModel data) =>
    json.encode(data.toJson());

class OrderDetailViewModel {
  OrderDetailViewModel({
    required this.odtId,
    required this.odId,
    required this.odtName,
    required this.odtNum,
    required this.odtType,
    required this.odtPrice,
    required this.odtTotal,
    required this.odtRmb,
    required this.odtCurrency,
    required this.odtCurrencySym,
    required this.pdId,
    required this.currencyId,
    required this.odtRate,
    required this.userId,
    required this.delisStatus,
    required this.pdName,
    required this.pdPic,
    required this.pdCate,
    required this.pdGroup,
    required this.pdGroupSub,
    required this.pdDetail,
    required this.pdType,
    required this.pdTypePrice,
    required this.pdPrice,
    required this.pdPriceEnd,
    required this.pdPriceSale,
    required this.pdStatusSale,
    required this.pdSelled,
    required this.pdAmount,
    required this.pdStar,
    required this.pdPoint,
    required this.pdCreate,
    required this.pdUpdate,
    required this.productLink,
  });

  int odtId;
  int odId;
  String odtName;
  int odtNum;
  String odtType;
  double odtPrice;
  double odtTotal;
  double odtRmb;
  int odtCurrency;
  String odtCurrencySym;
  int pdId;
  int currencyId;
  double odtRate;
  int userId;
  String delisStatus;
  String pdName;
  String pdPic;
  int pdCate;
  int pdGroup;
  int pdGroupSub;
  String pdDetail;
  String pdType;
  String pdTypePrice;
  double pdPrice;
  double pdPriceEnd;
  double pdPriceSale;
  String pdStatusSale;
  double pdSelled;
  double pdAmount;
  double pdStar;
  double pdPoint;
  dynamic pdCreate;
  dynamic pdUpdate;
  String productLink;

  factory OrderDetailViewModel.fromJson(Map<String, dynamic> json) =>
      OrderDetailViewModel(
        odtId: json["odt_id"],
        odId: json["od_id"],
        odtName: json["odt_name"],
        odtNum: json["odt_num"],
        odtType: json["odt_type"],
        odtPrice: json["odt_price"],
        odtTotal: json["odt_total"],
        odtRmb: json["odt_rmb"],
        odtCurrency: json["odt_currency"],
        odtCurrencySym: json["odt_currency_sym"],
        pdId: json["pd_id"],
        currencyId: json["currency_id"],
        odtRate: json["odt_rate"],
        userId: json["user_id"],
        delisStatus: json["delis_status"],
        pdName: json["pd_name"],
        pdPic: json["pd_pic"],
        pdCate: json["pd_cate"],
        pdGroup: json["pd_group"],
        pdGroupSub: json["pd_group_sub"],
        pdDetail: json["pd_detail"],
        pdType: json["pd_type"],
        pdTypePrice: json["pd_type_price"],
        pdPrice: json["pd_price"],
        pdPriceEnd: json["pd_price_end"],
        pdPriceSale: json["pd_price_sale"],
        pdStatusSale: json["pd_status_sale"],
        pdSelled: json["pd_selled"],
        pdAmount: json["pd_amount"],
        pdStar: json["pd_star"],
        pdPoint: json["pd_point"],
        pdCreate: json["pd_create"],
        pdUpdate: json["pd_update"],
        productLink: json["product_link"],
      );

  Map<String, dynamic> toJson() => {
        "odt_id": odtId,
        "od_id": odId,
        "odt_name": odtName,
        "odt_num": odtNum,
        "odt_type": odtType,
        "odt_price": odtPrice,
        "odt_total": odtTotal,
        "odt_rmb": odtRmb,
        "odt_currency": odtCurrency,
        "odt_currency_sym": odtCurrencySym,
        "pd_id": pdId,
        "currency_id": currencyId,
        "odt_rate": odtRate,
        "user_id": userId,
        "delis_status": delisStatus,
        "pd_name": pdName,
        "pd_pic": pdPic,
        "pd_cate": pdCate,
        "pd_group": pdGroup,
        "pd_group_sub": pdGroupSub,
        "pd_detail": pdDetail,
        "pd_type": pdType,
        "pd_type_price": pdTypePrice,
        "pd_price": pdPrice,
        "pd_price_end": pdPriceEnd,
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
