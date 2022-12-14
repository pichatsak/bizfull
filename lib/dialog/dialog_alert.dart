import 'package:flutter/material.dart';

Widget dialogErr(context, String txtShow) {
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
                      "images/cross.png",
                      width: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'ไม่สามารถดำเนินการได้',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      txtShow,
                      style: const TextStyle(
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
                        backgroundColor:
                            const Color.fromARGB(255, 101, 188, 231),
                        textStyle: const TextStyle(
                            fontSize: 18, fontFamily: "Prompt")),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, "/cart");
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

Widget dialogNeedLogin(context) {
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
                      "images/cross.png",
                      width: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'ไม่สามารถดำเนินการได้',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      "กรุณาเข้าสู่ระบบก่อน!",
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
                      Navigator.pushNamed(context, "/login");
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

Widget dialogErrAll(context, String txtShow) {
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
                      "images/cross.png",
                      width: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'ไม่สามารถดำเนินการได้',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      txtShow,
                      style: const TextStyle(
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

Widget dialogErrCoupun(context) {
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
                      "images/cross.png",
                      width: 90,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'ไม่สามารถรับคูปองได้',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      "เนื่องจากคูปองส่วนลดใช้ได้แค่กับรายการสินค้าน่าชอปเท่านั้น",
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

Widget dialogSuccessCart(context) {
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
                      "เพิ่มสินค้าในตะกร้าเรียบร้อย",
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
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 3, 58, 85),
                                textStyle: const TextStyle(
                                    fontSize: 18, fontFamily: "Prompt")),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('เลือกสินค้าต่อ'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
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
                              Navigator.of(context).pushNamed("/shopcart");
                            },
                            child: const Text('ไปที่ตะกร้าสินค้า'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget dialogSuccessAll(context, String txtShow) {
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
                    Text(
                      txtShow,
                      style: const TextStyle(
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
                        backgroundColor:
                            const Color.fromARGB(255, 101, 188, 231),
                        textStyle: const TextStyle(
                            fontSize: 18, fontFamily: "Prompt")),
                    onPressed: () {
                      Navigator.of(context).pop();
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

Widget dialogSuccessRegis(context, String txtShow) {
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
                        'สมัครสมาชิกเสร็จสิ้น',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      txtShow,
                      style: const TextStyle(
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
                      Navigator.of(context).pushNamed("/login");
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

Widget dialogSuccessReport(context, String txtShow) {
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
                        'แจ้งปัญหาเสร็จสิ้น',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      txtShow,
                      style: const TextStyle(
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
                      Navigator.of(context).pushNamed("/");
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

Widget dialogSuccessContact(context, String txtShow) {
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
                        'ส่งข้อความเสร็จสิ้น',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: "Prompt",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      txtShow,
                      style: const TextStyle(
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
                      Navigator.of(context).pushNamed("/");
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

Widget dialogSuccessPay(context, String txtShow) {
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
                    Text(
                      txtShow,
                      style: const TextStyle(
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
                        backgroundColor:
                            const Color.fromARGB(255, 101, 188, 231),
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

Widget dialogQrcode(context, String urlImg) {
  return AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    content: Builder(
      builder: (context) {
        return SizedBox(
          height: 600,
          width: 350,
          child: Stack(
            children: [
              Image.network(
                urlImg,
                width: double.maxFinite,
                fit: BoxFit.cover,
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
                        backgroundColor: const Color.fromARGB(255, 223, 73, 73),
                        textStyle: const TextStyle(
                            fontSize: 18, fontFamily: "Prompt")),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('ยกเลิก'),
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
