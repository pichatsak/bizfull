import 'package:flutter/material.dart';

Widget dialogSuccessBuyHaveShip(context) {
  return AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    content: Builder(
      builder: (context) {
        return SizedBox(
          height: 260,
          width: 350,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image.asset(
                      "images/checked.png",
                      width: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'ดำเนินการเสร็จสิ้น',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      "โปรดรอใบเสนอราคาเพื่อทำการชำระเงินในขั้นตอนต่อไป",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Prompt",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        backgroundColor: const Color(0xffaa1f2e),
                        textStyle: const TextStyle(
                            fontSize: 18, fontFamily: "Prompt")),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, "/");
                    },
                    child: const Text('ตกลง'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget dialogSuccessBuyHaveShop(context) {
  return AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    content: Builder(
      builder: (context) {
        return SizedBox(
          height: 260,
          width: 350,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image.asset(
                      "images/checked.png",
                      width: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'ดำเนินการเสร็จสิ้น',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      "โปรดชำระเงินแล้วแจ้งหลักฐานในขั้นตอนต่อไป",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Prompt",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        backgroundColor: const Color(0xffaa1f2e),
                        textStyle: const TextStyle(
                            fontSize: 18, fontFamily: "Prompt")),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, "/");
                    },
                    child: const Text('ไปหน้าแจ้งขำระเงิน'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
