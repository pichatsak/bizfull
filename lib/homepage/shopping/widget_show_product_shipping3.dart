import 'package:bizfull/other/hover.dart';
import 'package:bizfull/other/hoverm.dart';
import 'package:flutter/material.dart';

Widget productOld3(b, T, R, L, hSp2, fSd, hSp3, fSm) {
  return InkWell(
    onTap: () {},
    focusColor: color,
    hoverColor: color,
    highlightColor: color,
    child: OnHover(
        builder: ((isHovered) => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: isHovered ? const Color(0xffef4137) : Colors.white,
                    width: 1.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: isHovered ? 5 : 0,
                        color: isHovered
                            ? const Color.fromARGB(31, 192, 192, 192)
                                .withOpacity(.3)
                            : Colors.white.withOpacity(0),
                        offset: const Offset(-1, 2))
                  ]),
              child: Padding(
                padding: EdgeInsets.only(top: T, right: R, left: L),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: b,
                        width: b,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                              image: AssetImage("images/menutest.jpg"),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: hSp2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: Text(
                        "รองเท้าแตะ รองเท้าแตะผู้หญิง สไตล์เกาหลี รูปหมีน้อย 4 แบบ 3 ไซส์ให้เลือก ใส่สบาย ยืดหยุ่น",
                        style: TextStyle(fontSize: fSd, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(
                      height: hSp3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          "฿219.00",
                          style: TextStyle(
                            fontSize: fSm,
                            color: const Color(0xffee602e),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))),
  );
}

var color = Colors.transparent;
Widget product22shopping2(d, hM, hM1, fM, int index) {
  return InkWell(
    onTap: () {},
    focusColor: color,
    hoverColor: color,
    highlightColor: color,
    child: OnHover1(
        builder: ((isHovered) => Container(
              height: 213,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: index == 0
                      ? const Border(
                          right: BorderSide(
                            width: 0.7,
                            color: Colors.black26,
                          ),
                        )
                      : const Border(
                          right: BorderSide(
                            width: 0.7,
                            color: Colors.black26,
                          ),
                        ),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: isHovered ? 4 : 0,
                        color: isHovered
                            ? const Color(0xFF000000).withOpacity(.2)
                            : Colors.white.withOpacity(0),
                        offset: const Offset(-1, 2))
                  ]),
              child: Column(
                children: [
                  Container(
                    height: hM,
                  ),
                  Center(
                    child: Container(
                      width: d,
                      height: d,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("images/3.jpg"),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Container(
                    height: hM1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "อุปกรณ์ไฟฟ้า",
                      style: TextStyle(fontSize: fM, color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            ))),
  );
}
