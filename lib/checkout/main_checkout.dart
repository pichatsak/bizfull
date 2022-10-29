import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/checkout/dialog/main_dialog_add_adr.dart';
import 'package:bizfull/checkout/dialog/main_dialog_choose_deli.dart';
import 'package:bizfull/checkout/dialog/main_dialog_coupon.dart';
import 'package:bizfull/checkout/dialog/main_dialog_show_adr.dart';
import 'package:bizfull/checkout/widget_adddress.dart';
import 'package:bizfull/checkout/widget_bar_mobile.dart';
import 'package:bizfull/checkout/widget_barcheckout.dart';
import 'package:bizfull/checkout/widget_bin.dart';

import 'package:bizfull/checkout/widget_menuproduct.dart';
import 'package:bizfull/checkout/widget_menuproductShop.dart';
import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/models/adr_db_view_model.dart';
import 'package:bizfull/models/adr_view_model.dart';
import 'package:bizfull/models/cart_view_model.dart';
import 'package:bizfull/models/deli_view_model.dart';
import 'package:bizfull/models/payment_model.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var formatNum = NumberFormat('#,###,##0.00');

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final SingingCharacter1 character1 = SingingCharacter1.lafayette;
  final box = GetStorage();

  List<CartViewModel> listShip = [];
  List<CartViewModel> listShop = [];
  List<PaymentModel> listPayment = [];
  List<AdrViewModel> listAdr = [];

  double totalShip = 0.00;
  double totalShop = 0.00;
  double totalAll = 0.00;
  double totalDisc = 0.00;
  double totalFinal = 0.00;

  bool isLogin = false;
  bool isLoad = false;
  bool isLoadAdr = false;
  int numAllpd = 0;
  String userId = "";
  String pmId = "";

  /// ADR ////
  String adrHome = "";
  int adrProv = 0;
  int adrAmp = 0;
  int adrDict = 0;
  String adrPost = "";
  String adrName = "";
  String adrPhone = "";
  String adrFull = "";
  late AdrViewModel adrViewModel;
  String adrChooseCur = "0";

  /// Deli /////
  int chooseDeliShip = 0;
  int chooseDeliShop = 0;
  List<DeliViewModel> listDeliShop = [];
  List<DeliViewModel> listDeliShip = [];
  List<DeliViewModel> listDeliAll = [];

  @override
  void initState() {
    box.write("curpage", "checkout");
    super.initState();
    checkLogin();
  }

  showDialogLoginNeed() async {
    await Future.delayed(const Duration(milliseconds: 50));
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => dialogNeedLogin(context));
  }

  void checkLogin() {
    bool loginGet = box.read("login") ?? false;
    isLogin = loginGet;

    if (!isLogin) {
      showDialogLoginNeed();
    } else {
      userId = box.read("user_id").toString();
      getCartData();
      getPaymentAll();
      getAdrFirst();
      getDeliAll();
    }
  }

  Future<void> getDeliAll() async {
    var url = "${Global.hostName}/deli_get_all.php";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    getData["data"].map((dataPd) {
      DeliViewModel pdGet = DeliViewModel.fromJson(dataPd);
      listDeliAll.add(pdGet);
      if (pdGet.deliType == "out") {
        listDeliShip.add(pdGet);
      } else {
        listDeliShop.add(pdGet);
      }
    }).toList();
    chooseDeliShip = 0;
    chooseDeliShop = 0;
    setState(() {});
  }

  void setShowDeliChoose() {
    setState(() {});
  }

  void opendChangeDl(String type, String typeDvs) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 24.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          contentPadding: const EdgeInsets.only(top: 0.0),
          content: DialogChooseDelis(
            listDelis: listDeliAll,
            typePd: type,
            typeDvs: typeDvs,
            onChoose: (value) {
              if (value.type == "ship") {
                chooseDeliShip = int.parse(value.choose);
              } else {
                chooseDeliShop = int.parse(value.choose);
              }
              setShowDeliChoose();
            },
          )),
    );
  }

  Future<void> getAdrFirst() async {
    var url = "${Global.hostName}/adr_first.php?user_id=$userId";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    adrViewModel = AdrViewModel.fromJson(getData["data"]);
    adrName = adrViewModel.userName;
    adrHome = adrViewModel.userAdr;
    adrProv = adrViewModel.provId;
    adrAmp = adrViewModel.ampId;
    adrDict = int.parse(adrViewModel.dictId);
    adrPost = adrViewModel.postCode;
    adrPhone = adrViewModel.phone;
    adrFull =
        "$adrHome ต.${adrViewModel.dict} อ.${adrViewModel.amp} จ.${adrViewModel.dict} $adrPost";

    setState(() {
      isLoadAdr = true;
    });
  }

  Future<void> getChooseAdr(String idAdr) async {
    print("adr : $idAdr");
    var url = "${Global.hostName}/adr_get.php?id=$idAdr";
    var res = await http.get(Uri.parse(url));
    print(res.body);
    var getData = await json.decode(res.body);
    AdrDbViewModel adrDbViewModel = AdrDbViewModel.fromJson(getData["data"]);
    adrName = adrDbViewModel.adrsName;
    adrHome = adrDbViewModel.adrsHome;
    adrProv = adrDbViewModel.provId;
    adrAmp = adrDbViewModel.ampId;
    adrDict = int.parse(adrDbViewModel.dictId);
    adrPost = adrDbViewModel.postCode;
    adrPhone = adrDbViewModel.adrsPhone;
    adrFull =
        "$adrHome ต.${adrDbViewModel.dict} อ.${adrDbViewModel.amp} จ.${adrDbViewModel.prov} $adrPost";

    setState(() {});
  }

  Future<void> setShowAdrFromChoose(AdrDbViewModel adrDbViewModelGet) async {
    adrName = adrDbViewModelGet.adrsName;
    adrHome = adrDbViewModelGet.adrsHome;
    adrProv = adrDbViewModelGet.provId;
    adrAmp = adrDbViewModelGet.ampId;
    adrDict = int.parse(adrDbViewModelGet.dictId);
    adrPost = adrDbViewModelGet.postCode;
    adrPhone = adrDbViewModelGet.adrsPhone;
    adrFull =
        "$adrHome ต.${adrDbViewModelGet.dict} อ.${adrDbViewModelGet.amp} จ.${adrDbViewModelGet.prov} $adrPost";

    setState(() {});
  }

  Future<void> getPaymentAll() async {
    listPayment = [];
    var url = "${Global.hostName}/payment_all.php";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    getData["data"].map((dataPd) {
      PaymentModel pdGet = PaymentModel.fromJson(dataPd);
      listPayment.add(pdGet);
    }).toList();
    pmId = listPayment[0].payId.toString();
    setState(() {});
  }

  void updatePay(String value) {
    setState(() {
      pmId = value;
    });
  }

  Future<void> getCartData() async {
    listShop = [];
    listShip = [];
    totalShop = 0;
    totalShip = 0;
    var url = "${Global.hostName}/cart_all_check.php?user_id=$userId";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((dataPd) {
        if (dataPd["cart_type"] == "shop") {
          CartViewModel pdGet = CartViewModel.fromJson(dataPd);
          listShop.add(pdGet);
          totalShop += pdGet.cartTotal;
        } else {
          CartViewModel pdGet = CartViewModel.fromJson(dataPd);
          listShip.add(pdGet);
          totalShip += pdGet.cartTotal * pdGet.currencyRate;
        }
      }).toList();
      numAllpd = listShip.length + listShop.length;
      totalAll = totalShip + totalShop;
      totalFinal = totalAll - totalDisc;
      setState(() {});
    }
  }

  void openDlAdr(String ty) async {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          insetPadding: ty == "pc"
              ? const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0)
              : const EdgeInsets.symmetric(horizontal: 15.0, vertical: 24.0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          contentPadding: const EdgeInsets.only(top: 0.0),
          content: ty == "pc"
              ? DialogShowAdr(
                  typeDvs: "pc",
                  onValChange: (value) {
                    setShowAdrFromChoose(value);
                  },
                  onChoose: (value) {
                    adrChooseCur = value;
                  },
                  adrChooseCur: adrChooseCur,
                  onClickAdd: (value) => openDlAdd(),
                )
              : DialogShowAdr(
                  typeDvs: "mobile",
                  onValChange: (value) {
                    setShowAdrFromChoose(value);
                  },
                  onChoose: (value) {
                    adrChooseCur = value;
                  },
                  adrChooseCur: adrChooseCur,
                  onClickAdd: (value) => openDlAdd(),
                )
          // : dialog1mobile(context),
          // content: ty == "pc"
          //     ? dialogShowAdr(context, addressradio, setState, openDlAdd)
          //     : dialog1mobile(context),
          ),
    );
  }

  void openDlAdd() async {
    showDialog<String>(
      barrierDismissible: false,
      // barrierColor: null,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        contentPadding: const EdgeInsets.only(top: 0.0),
        content: DialogAddAdrMain(
          onValChange: (value) {
            getChooseAdr(value.data);
          },
        ),
      ),
    );
  }

  void openCouPong(String typ) {
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        insetPadding: typ == "pc"
            ? const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0)
            : const EdgeInsets.symmetric(horizontal: 30.0, vertical: 24.0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        contentPadding: const EdgeInsets.only(top: 0.0),
        content: DialogChooseCoupon(),
      ),
    );
  }

  final Addressradio addressradio = Addressradio.lafayette;
  @override
  Widget build(BuildContext context) {
    double hbar;
    double h;
    String typeSc1;
    String typeSc;
    EdgeInsets rdShow;
    EdgeInsets rdShow2;
    double hP;

    if (Device.width > 991) {
      hbar = 119;
      h = 30;
      typeSc1 = "pc";
      typeSc = "pc";
      rdShow = const EdgeInsets.only(top: 20, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 10, right: 20);
      hP = 20;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      h = 30;
      typeSc1 = "md";
      typeSc = "mobile";
      rdShow = const EdgeInsets.only(top: 20, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 20, right: 10);
      hP = 0;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      h = 30;
      typeSc1 = "sm";
      typeSc = "mobile";
      rdShow = const EdgeInsets.only(top: 20, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 20, right: 10);
      hP = 0;
    } else {
      hbar = 70;
      h = 30;
      typeSc1 = "xs";
      typeSc = "mobile";
      rdShow = const EdgeInsets.only(top: 15, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 20, right: 10);
      hP = 0;
    }
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
        drawer: const Drawermenu(),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: hbar),
                  BootstrapContainer(
                      fluid: true,
                      decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                      children: [
                        typeSc == "pc"
                            ? barcheckout(context)
                            : barmobile(context)
                      ]),
                  BootstrapContainer(
                      fluid: typeSc == "pc" ? false : true,
                      padding: EdgeInsets.only(top: hP),
                      children: [
                        BootstrapRow(children: <BootstrapCol>[
                          BootstrapCol(
                            sizes: 'col-lg-8 col-12 col-sm-12 col-md-12',
                            child: Column(
                              children: [
                                Padding(
                                  padding: rdShow,
                                  child: isLoadAdr
                                      ? Container(
                                          //  color: const Color(0xfff3f3f3),
                                          child: adddress())
                                      : const SizedBox(
                                          height: 0,
                                        ),
                                ),
                                menuproductShip(listShip, listDeliShip,
                                    chooseDeliShip, opendChangeDl),
                                menuproductShop(listShop, listDeliShop,
                                    chooseDeliShop, opendChangeDl),
                              ],
                            ),
                          ),
                          BootstrapCol(
                              sizes: 'col-lg-4 col-12 col-sm-12 col-md-12',
                              child: Padding(
                                  padding: rdShow2,
                                  child: Container(
                                      // color: const Color(0xfff3f3f3),
                                      // decoration: BoxDecoration(
                                      //     border: Border.all(color: Colors.black12),
                                      //     borderRadius: BorderRadius.circular(7)),
                                      child: bin(
                                          character1,
                                          setState,
                                          context,
                                          totalAll,
                                          totalDisc,
                                          totalFinal,
                                          numAllpd,
                                          listPayment,
                                          pmId,
                                          updatePay))))
                        ])
                      ]),
                  SizedBox(height: h),
                  typeSc1 == "pc"
                      ? BootstrapContainer(
                          fluid: true,
                          decoration:
                              const BoxDecoration(color: Color(0xfff3f3f3)),
                          children: <Widget>[barfootterlogin()])
                      : Container(),
                ],
              ),
            ),
            const Navmain(),
          ],
        ),
        floatingActionButton: typeSc == "pc"
            ? FloatingActionButton(
                tooltip: 'Live Chat',
                hoverColor: const Color(0xffef4137),
                elevation: 12,
                onPressed: () {},
                backgroundColor: const Color(0xffad2332),
                child: const Icon(
                  FontAwesomeIcons.solidCommentDots,
                  size: 24,
                ),
              )
            : const SizedBox(
                height: 0,
              ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(1, context)
            : const SizedBox(
                height: 0,
              ));
  }

  Widget adddress() {
    double f;
    double ff;
    double lP;
    double rP;
    String tYP;

    if (Device.width > 991) {
      f = 14;
      ff = 12;
      lP = 0;
      rP = 15;
      tYP = "pc";
    } else if (Device.width >= 768 && Device.width <= 991) {
      f = 14;
      ff = 12;
      lP = 0;
      rP = 10;
      tYP = "mobile";
    } else {
      f = 13;
      ff = 11;
      lP = 0;
      rP = 10;
      tYP = "mobile";
    }
    return Padding(
      padding: EdgeInsets.only(right: rP, bottom: 25, left: lP),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: const Icon(
                        FontAwesomeIcons.locationDot,
                        size: 18,
                        color: Color(0xffa91f2e),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "ที่อยู่ในการจัดส่ง",
                    style: TextStyle(fontSize: 14, fontFamily: "Prompt-Medium"),
                  ),
                ],
              ),
              InkWell(
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  openDlAdr(tYP);
                },
                child: const Text(
                  "เปลี่ยนที่อยู่",
                  style: TextStyle(fontSize: 13, color: Color(0xffed3023)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 1,
            color: Colors.black12,
          ),
          const SizedBox(height: 10),
          isLoadAdr
              ? Row(
                  children: [
                    Text(
                      // "พิเชฐศักดิ์ ดุเหว่า",
                      adrName,
                      style: TextStyle(fontSize: f),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      adrPhone,
                      style: TextStyle(fontSize: f),
                    ),
                  ],
                )
              : const Center(),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffed3023),
                    borderRadius: BorderRadius.circular(90)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 1, bottom: 1, left: 15, right: 15),
                  child: Flexible(
                    child: Text(
                      "ที่อยู่",
                      style: TextStyle(fontSize: ff, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  adrFull,
                  style: TextStyle(fontSize: f),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget binRight() {
    String typbin;
    double hy;
    double rP;
    double tP;
    double bP;
    String tYP;

    if (Device.width > 1240) {
      typbin = "pc";
      hy = 20;
      rP = 0;
      tP = 0;
      bP = 0;
      tYP = "pc";
    } else if (Device.width >= 992 && Device.width <= 1240) {
      typbin = "lg";
      hy = 10;
      rP = 0;
      tP = 0;
      bP = 0;
      tYP = "pc";
    } else {
      typbin = "pc";
      hy = 20;
      rP = 10;
      tP = 20;
      bP = 20;
      tYP = "mobile";
    }
    return Padding(
      padding: EdgeInsets.only(right: rP, top: tP, bottom: bP), //15
      child: Column(
        children: [
          typbin == "pc"
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            child: const Icon(
                              FontAwesomeIcons.receipt,
                              size: 18,
                              color: Color(0xffa91f2e),
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "เลือกวิธีการชำระเงิน",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "Prompt-Medium"),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            child: const Icon(
                              FontAwesomeIcons.receipt,
                              size: 18,
                              color: Color(0xffa91f2e),
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "เลือกวิธีการชำระเงิน",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "Prompt-Medium"),
                        ),
                      ],
                    ),
                  ],
                ),
          SizedBox(height: hy),
          ...listPayment.map((itempm) => Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffa91f2e)),
                        borderRadius: BorderRadius.circular(7),
                        color: const Color.fromARGB(19, 241, 167, 160)),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8, top: 8),
                      child: ListTile(
                        title: Text(
                          itempm.payName,
                          style: const TextStyle(fontSize: 15),
                        ),
                        trailing: Image.network(
                          "${Global.hostImgPayment}/${itempm.payImg}",
                          width: 60,
                          height: 60,
                        ),
                        leading: Radio<String>(
                          activeColor: const Color(0xffa91f2e),
                          value: itempm.payId.toString(),
                          groupValue: pmId,
                          onChanged: (String? value) {
                            updatePay(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              )),
          const SizedBox(height: 30),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 2),
                  child: const Icon(
                    FontAwesomeIcons.tag,
                    size: 18,
                    color: Color(0xffa91f2e),
                  )),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "คูปองส่วนลด",
                style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: TextFormField(
                  enabled: false,
                  cursorColor: Colors.red,
                  decoration: const InputDecoration(
                      hintText: "คูปองส่วนลด",
                      hintStyle: TextStyle(fontSize: 13, color: Colors.black54),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(7)),
                      //     borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      filled: true,
                      fillColor: Color(0xfff3f3f3)),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff2e3192)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ))),
                onPressed: () {
                  openCouPong(tYP);
                },
                child: const SizedBox(
                  height: 46.5,
                  width: 70,
                  child: Center(
                      child: Text(
                    "เลือก",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: const Icon(
                    FontAwesomeIcons.cartArrowDown,
                    size: 18,
                    color: Color(0xffa91f2e),
                  )),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "สรุปข้อมูลคำสั่งซื้อ",
                style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ยอดรวม ($numAllpd)",
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
              Text(
                "฿${formatNum.format(totalAll)}",
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ส่วนลด",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              Text(
                "฿${formatNum.format(totalDisc)}",
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(height: 1, color: Colors.black12),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ยอดรวมทั้งสิ้น",
                style: TextStyle(fontSize: 14),
              ),
              Text(
                "฿${formatNum.format(totalFinal)}",
                style: const TextStyle(fontSize: 16, color: Color(0xffed3023)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xffed3023)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ))),
              onPressed: () {
                Navigator.of(context).pushNamed("/evidence");
              },
              child: const SizedBox(
                height: 45,
                child: Center(
                    child: Text(
                  "สั่งซื้อ",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
              )),
        ],
      ),
    );
  }
}
