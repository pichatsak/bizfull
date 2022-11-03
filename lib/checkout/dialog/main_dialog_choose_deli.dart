import 'package:bizfull/global.dart';
import 'package:bizfull/models/choose_deli_model.dart';
import 'package:bizfull/models/deli_view_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogChooseDelis extends StatefulWidget {
  String typePd = "";
  String typeDvs = "";
  final ValueChanged<ChooseDeliModel> onChoose;
  List<DeliViewModel> listDelis = [];
  DialogChooseDelis(
      {Key? key,
      required this.typePd,
      required this.typeDvs,
      required this.listDelis,
      required this.onChoose})
      : super(key: key);

  @override
  State<DialogChooseDelis> createState() => _DialogChooseDelisState();
}

class _DialogChooseDelisState extends State<DialogChooseDelis> {
  String chooseDl = "0";
  List<DeliViewModel> listDelisShop = [];
  List<DeliViewModel> listDelisShip = [];
  List<DeliViewModel> listDeliIn = [];
  String deliChooseCur = "0";
  @override
  void initState() {
    super.initState();
    setFirstList();
  }

  void setFirstList() {
    listDeliIn = [];
    widget.listDelis.map((e) {
      if (widget.typePd == "ship") {
        if (e.deliType == "out") {
          listDeliIn.add(e);
        }
      } else {
        if (e.deliType == "in") {
          listDeliIn.add(e);
        }
      }
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: widget.typeDvs == "pc" ? 600 : 500,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        top: 50, right: 20, left: 0, bottom: 100),
                    child: Column(children: [
                      ...listDeliIn.map(
                        (item) {
                          return Column(
                            children: [
                              dataDeliList(item),
                              const Padding(
                                  padding: EdgeInsets.only(
                                      left: 25, right: 5, top: 20),
                                  child: Divider(thickness: 1.0)),
                            ],
                          );
                        },
                      ).toList(),
                    ])),
              ],
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "เลือกวิธีการจัดส่ง",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: "Prompt-Medium"),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 5),
                    //   child: ,
                    // ),
                  ],
                ),
              )),
          const SizedBox(
            height: 50,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Divider(
                  color: Colors.black12,
                  height: 1.0,
                )),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 8, left: 10, right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(7),
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(7),
                                  color:
                                      const Color.fromARGB(31, 143, 143, 143)),
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, left: 30, right: 30),
                              child: const Text(
                                "ยกเลิก",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xffed3023),
                                  ),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ))),
                              onPressed: () {
                                if (widget.typePd == "ship") {
                                  widget.onChoose(ChooseDeliModel(
                                      choose: deliChooseCur, type: "ship"));
                                } else {
                                  widget.onChoose(ChooseDeliModel(
                                      choose: deliChooseCur, type: "shop"));
                                }
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 20,
                                    right: 20),
                                child: const Text(
                                  "ยืนยัน",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 65,
                child: Column(
                  children: const [
                    Divider(
                      color: Colors.black12,
                      height: 1.0,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget dataDeliList(DeliViewModel item) {
    return ListTile(
      title: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text(
                      // "พิเชฐศักดิ์ ดุเหว่า",
                      item.deliName,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                  // Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Container(
                  //         width: 1, height: 20, color: Colors.black26)),
                  // const Text("0932430369",
                  //     style: TextStyle(fontSize: 13, color: Colors.black54))
                ]),
              ],
            ),
            const SizedBox(height: 15),
            Image.network(
              "${Global.hostImgDeli}/${item.deliPic}",
              width: 120,
              height: 120,
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
      leading: Radio<String>(
        activeColor: const Color(0xffa91f2e),
        value: listDeliIn.indexOf(item).toString(),
        groupValue: deliChooseCur,
        onChanged: (String? value) {
          setState(() {
            deliChooseCur = value!;
          });
        },
      ),
    );
  }
}
