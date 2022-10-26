// To parse this JSON data, do
//
//     final productViewModel = productViewModelFromJson(jsonString);

import 'dart:convert';

ProductViewModel productViewModelFromJson(String str) =>
    ProductViewModel.fromJson(json.decode(str));

String productViewModelToJson(ProductViewModel data) =>
    json.encode(data.toJson());

class ProductViewModel {
  ProductViewModel({
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
    required this.categoryId,
    required this.categoryName,
    required this.categoryPic,
    required this.groupProductSubId,
    required this.groupTitle,
    required this.groupIcon,
    required this.groupCurency,
    required this.groupMain,
    required this.groupProductId,
    required this.typeShow,
    required this.txtHead,
    required this.txtSize,
    required this.txtColor,
    required this.pic,
    required this.typeProduct,
    required this.currencyId,
    required this.currencyName,
    required this.currencySymbol,
    required this.currencyRate,
    required this.currencyLevel,
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
  double pdPriceEnd;
  double pdPriceSale;
  String pdStatusSale;
  int pdSelled;
  int pdAmount;
  double pdStar;
  double pdPoint;
  dynamic pdCreate;
  dynamic pdUpdate;
  String productLink;
  int categoryId;
  String categoryName;
  String categoryPic;
  int groupProductSubId;
  String groupTitle;
  String groupIcon;
  int groupCurency;
  int groupMain;
  int groupProductId;
  String typeShow;
  String txtHead;
  int txtSize;
  String txtColor;
  String pic;
  String typeProduct;
  int currencyId;
  String currencyName;
  String currencySymbol;
  double currencyRate;
  int currencyLevel;

  factory ProductViewModel.fromJson(Map<String, dynamic> json) =>
      ProductViewModel(
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
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        categoryPic: json["category_pic"],
        groupProductSubId: json["group_product_sub_id"],
        groupTitle: json["group_title"],
        groupIcon: json["group_icon"],
        groupCurency: json["group_curency"],
        groupMain: json["group_main"],
        groupProductId: json["group_product_id"],
        typeShow: json["type_show"],
        txtHead: json["txt_head"],
        txtSize: json["txt_size"],
        txtColor: json["txt_color"],
        pic: json["pic"],
        typeProduct: json["type_product"],
        currencyId: json["currency_id"],
        currencyName: json["currency_name"],
        currencySymbol: json["currency_symbol"],
        currencyRate: json["currency_rate"],
        currencyLevel: json["currency_level"],
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
        "category_id": categoryId,
        "category_name": categoryName,
        "category_pic": categoryPic,
        "group_product_sub_id": groupProductSubId,
        "group_title": groupTitle,
        "group_icon": groupIcon,
        "group_curency": groupCurency,
        "group_main": groupMain,
        "group_product_id": groupProductId,
        "type_show": typeShow,
        "txt_head": txtHead,
        "txt_size": txtSize,
        "txt_color": txtColor,
        "pic": pic,
        "type_product": typeProduct,
        "currency_id": currencyId,
        "currency_name": currencyName,
        "currency_symbol": currencySymbol,
        "currency_rate": currencyRate,
        "currency_level": currencyLevel,
      };
}
