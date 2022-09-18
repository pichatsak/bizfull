import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timelines/timelines.dart';

Widget timeline() {
  double pad;
  double fO;
  double fO1;
  String Typ;
  if (Device.width > 991) {
    pad = 50;
    fO = 14;
    fO1 = 13;
    Typ = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    pad = 50;
    fO = 14;
    fO1 = 13;
    Typ = "pc";
  } else {
    pad = 30;
    fO = 13;
    fO1 = 12;
    Typ = "mobile";
  }
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const OutlinedDotIndicator(
                      size: 21, color: Color(0xffef4137))),
              const SizedBox(
                height: 50.0,
                child: SolidLineConnector(color: Color(0xffef4137)),
              )
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('การจัดส่งสำเร็จ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text('พัสดุของท่านถูกจัดส่งเรียบร้อยแล้ว',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const DotIndicator(
                      size: 21,
                      color: Color(0xffef4137),
                      child: Icon(FontAwesomeIcons.check,
                          size: 12, color: Colors.white))),
              const SizedBox(
                height: 50.0,
                child: SolidLineConnector(color: Color(0xffef4137)),
              )
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('เจ้าหน้าที่กำลังจัดส่งพัสดุ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text('Kerry จะนำส่งพัสดุของคุณวันนี้',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const DotIndicator(
                    size: 21,
                    color: Color(0xffef4137),
                  )),
              const SizedBox(
                height: 50.0,
                child: SolidLineConnector(color: Color(0xffef4137)),
              )
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('พัสดุถึงสาขาปลายทางแล้ว',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text(
                    'พัสดุของคุณกำลังถูกส่งมอบให้เจ้าหน้าที่ขนส่ง เพื่อจัดส่งให้คุณภายใน 1-2 วัน',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const DotIndicator(
                    size: 21,
                    color: Color(0xffef4137),
                  )),
              const SizedBox(
                height: 50.0,
                child: SolidLineConnector(color: Color(0xffef4137)),
              )
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('พัสดุออกจากสถานีคัดแยกแล้ว',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text('พัสดุกำลังเดินทางไปยังสาขาปลายทาง',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const DotIndicator(
                    size: 21,
                    color: Color(0xffef4137),
                  )),
              const SizedBox(
                height: 50.0,
                child: SolidLineConnector(color: Color(0xffef4137)),
              )
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('พัสดุถึงสถานีคัดแยกแล้ว',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text(
                    'พัสดุอยู่ระหว่างการคัดแยกตามพื้นที่ เพื่อนำส่งไปยังสาขาปลายทางต่อไป',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const DotIndicator(
                    size: 21,
                    color: Color(0xffef4137),
                  )),
              const SizedBox(
                height: 50.0,
                child: SolidLineConnector(color: Color(0xffef4137)),
              )
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('บริษัทขนส่งได้เข้ารับพัสดุเรียบร้อยแล้ว',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text(
                    'บริษัทขนส่งจะนำพัสดุไปยังสถานีคัดแยกเพื่อกระจายสินค้าให้สาขาปลายทางต่อไป',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const DotIndicator(
                    size: 21,
                    color: Color(0xffef4137),
                  )),
              const SizedBox(
                height: 50.0,
                child: SolidLineConnector(color: Color(0xffef4137)),
              )
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('บริษัทขนส่งได้รับพัสดุเรียบร้อยแล้ว',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text(
                    'ร้านค้าได้นำส่งพัสดุที่จุดนำส่งสินค้า (drop-off) เรียบร้อยแล้ว บริษัทขนส่งจะนำพัสดุไปยังสถานีคัดแยกเพื่อกระจายสินค้าให้สาขาปลายทางต่อไป',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(children: [
              TimelineTheme(
                  data: TimelineThemeData(),
                  child: const DotIndicator(
                    size: 21,
                    color: Color(0xffef4137),
                  )),
            ]),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('สินค้าได้รับการบรรจุเรียบร้อยแล้ว',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: fO,
                    ),
                    textAlign: TextAlign.start),
                const Text(
                    'พัสดุของท่านถูกบรรจุ และกำลังจะถูก นำส่งให้บริษัทขนส่ง กรุณาเปิดการแจ้งเตือนเพื่อรับแจ้งความเคลื่อนไหวของพัสดุ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    textAlign: TextAlign.start),
              ],
            ))
          ])),
          Padding(
            padding: EdgeInsets.only(left: pad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Typ == "pc"
                    ? Text('วันที่ 14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0)))
                    : Text('14 ก.ย. 2565',
                        style: TextStyle(
                            fontSize: fO1,
                            color: const Color.fromARGB(165, 0, 0, 0))),
                Text('เวลา 16.19',
                    style: TextStyle(
                        fontSize: fO1,
                        color: const Color.fromARGB(165, 0, 0, 0))),
              ],
            ),
          )
        ],
      ),
    ],
  );
}
