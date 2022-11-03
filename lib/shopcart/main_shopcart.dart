import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/models/cart_view_model.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:bizfull/shopcart/widget_bar_mobile.dart';
import 'package:bizfull/shopcart/widget_data_shopcart.dart';
import 'package:bizfull/shopcart/widget_data_shopcart1.dart';
import 'package:bizfull/shopcart/widget_enddesktop.dart';
import 'package:bizfull/shopcart/widget_endmobile.dart';
import 'package:bizfull/shopcart/widget_showtopbar.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class ShopCart extends StatefulWidget {
  const ShopCart({Key? key}) : super(key: key);

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  final SingingCharacter character = SingingCharacter.lafayette;
  final SingingCharacter1 character1 = SingingCharacter1.lafayette;
  final SingingCharacter2 character2 = SingingCharacter2.lafayette;
  final SingingCharacter3 character3 = SingingCharacter3.lafayette;

  final box = GetStorage();
  List<CartViewModel> listShip = [];
  List<CartViewModel> listShop = [];

  List<CartViewModel> listChooseShop = [];
  List<CartViewModel> listChooseShip = [];

  List<CartViewModel> listChoosePd = [];

  double totalShip = 0.00;
  double totalShop = 0.00;
  double totalAll = 0.00;

  bool isLogin = false;
  bool isLoad = false;
  bool isCheckedAll = false;
  bool isCheckedAllShop = false;
  String chooseAll = "";
  bool isCheckedAllShip = false;
  String userId = "";
  @override
  void initState() {
    box.write("curpage", "shopcart");
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
    }
  }

  Future<void> delNums(int pos, String cartId) async {
    if (listShop[pos].cartNum == 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) =>
              dialogErrAll(context, "ลดจำนวนสินค้ามากกว่านี้ไม่ได้แล้ว"));
    } else {
      var dataForm = {
        "cart_id": cartId.toString(),
      };
      var url = "${Global.hostName}/del_num_cart.php";
      await http.post(Uri.parse(url), body: dataForm);
      getCartData();
    }
  }

  Future<void> delNumsShip(int pos, String cartId) async {
    if (listShop[pos].cartNum == 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) =>
              dialogErrAll(context, "ลดจำนวนสินค้ามากกว่านี้ไม่ได้แล้ว"));
    } else {
      var dataForm = {
        "cart_id": cartId.toString(),
      };
      var url = "${Global.hostName}/del_num_cart.php";
      await http.post(Uri.parse(url), body: dataForm);
      getCartData();
    }
  }

  Future<void> plusNums(int pos) async {
    var dataForm = {
      "cart_id": pos.toString(),
    };
    var url = "${Global.hostName}/plus_num_cart.php";
    await http.post(Uri.parse(url), body: dataForm);
    getCartData();
  }

  Future<void> delCart(int cartId) async {
    var dataForm = {
      "cart_id": cartId.toString(),
    };
    var url = "${Global.hostName}/del_cart.php";
    await http.post(Uri.parse(url), body: dataForm);
    getCartData();
  }

  Future<void> getCartData() async {
    listShop = [];
    listShip = [];
    totalShop = 0;
    totalShip = 0;
    var url = "${Global.hostName}/cart_all.php?user_id=$userId";
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
      totalAll = totalShip + totalShop;
      setState(() {});
    }
  }

  void setNewTotal() {
    totalShop = 0;
    totalShip = 0;
    totalAll = 0;
    listShip.map((e) {
      if (e.isCheck) {
        totalShip += (e.cartTotal) * e.currencyRate;
      }
    }).toList();
    listShop.map((e) {
      if (e.isCheck) {
        totalShop += (e.cartTotal);
      }
    }).toList();

    setState(() {
      totalAll = totalShip + totalShop;
    });
  }

  void updateCheckAllShip(bool val) {
    if (val) {
      listShip.map((e) {
        e.isCheck = true;
      }).toList();
    } else {
      listShip.map((e) {
        e.isCheck = false;
      }).toList();
    }
    setState(() {
      isCheckedAllShip = val;
    });
    setNewTotal();
  }

  void updateCheckAllShop(bool val) {
    if (val) {
      listShop.map((e) {
        e.isCheck = true;
      }).toList();
    } else {
      listShop.map((e) {
        e.isCheck = false;
      }).toList();
    }
    setState(() {
      isCheckedAllShop = val;
    });
    setNewTotal();
  }

  void updateCheckAll(bool val) {
    updateCheckAllShop(val);
    updateCheckAllShip(val);
    setState(() {
      isCheckedAll = val;
    });
  }

  void gotoNext() {
    int numall = 0;
    chooseAll = "";
    listShip.map((e) {
      if (e.isCheck) {
        if (numall == 0) {
          chooseAll += "${e.cartId}";
        } else {
          chooseAll += ",${e.cartId}";
        }
        numall++;
      }
    }).toList();
    listShop.map((e) {
      if (e.isCheck) {
        if (numall == 0) {
          chooseAll += "${e.cartId}";
        } else {
          chooseAll += ",${e.cartId}";
        }
        numall++;
      }
    }).toList();
    if (numall > 0) {
      pepareGo();
    } else {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) =>
              dialogErrAll(context, "กรุณาเลือกสินค้าอย่างน้อย 1 ชิ้น"));
    }
  }

  Future<void> pepareGo() async {
    var dataForm = {"user_id": userId, "data": chooseAll};
    var url = "${Global.hostName}/go_check_cart.php";
    await http.post(Uri.parse(url), body: dataForm);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed("/checkout");
  }

  @override
  Widget build(BuildContext context) {
    String typeSc;
    String typeSc1;
    String mD;
    double h;
    double hbar;
    if (Device.width > 991) {
      typeSc = "pc";
      typeSc1 = "pc";
      h = 20;
      hbar = 119;
      mD = "pc";
    } else if (Device.width >= 768 && Device.width <= 991) {
      typeSc = "pc";
      typeSc1 = "md";
      h = 20;
      hbar = 70;
      mD = "mobile";
    } else if (Device.width >= 576 && Device.width <= 767) {
      typeSc = "pc";
      typeSc1 = "xm";
      h = 20;
      hbar = 70;
      mD = "mobile";
    } else {
      typeSc = "mobile";
      typeSc1 = "xs";
      h = 0;
      hbar = 70;
      mD = "mobile";
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
                      mD == "pc" ? showtopbar(context) : barmobile(context)
                    ]),
                BootstrapContainer(
                    fluid: mD == "pc" ? false : true,
                    padding: const EdgeInsets.only(top: 10),
                    children: [
                      datashopcart(
                          character,
                          setState,
                          listShip,
                          plusNums,
                          delNumsShip,
                          isCheckedAllShip,
                          updateCheckAllShip,
                          delCart,
                          setNewTotal),
                      datashopcart1(
                          character1,
                          setState,
                          listShop,
                          plusNums,
                          delNums,
                          isCheckedAllShop,
                          updateCheckAllShop,
                          delCart,
                          setNewTotal),
                      typeSc == "pc"
                          ? enddesktop(character2, setState, context, totalAll,
                              isCheckedAll, updateCheckAll, gotoNext)
                          : endmobile(character3, setState, context, totalAll,
                              isCheckedAll, updateCheckAll, gotoNext)
                    ]),
                SizedBox(height: h),
                typeSc1 == "pc"
                    ? BootstrapContainer(
                        fluid: true,
                        decoration:
                            const BoxDecoration(color: Color(0xfff3f3f3)),
                        children: <Widget>[barfootterlogin()])
                    : Container()
              ],
            )),
            const Navmain(),
          ],
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(1, context)
            : const SizedBox(
                height: 0,
              ));
  }
}
