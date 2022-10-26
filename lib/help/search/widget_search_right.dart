import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget searchright(context) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Column(
      children: [
        TextFormField(
          cursorColor: Colors.black,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          decoration: InputDecoration(
              suffixIcon: InkWell(
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.black54,
                ),
              ),
              hintText: 'ค้นหา หัวข้อ,คำถาม...',
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                borderSide: BorderSide(color: Colors.black54, width: 1.0),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                borderSide: BorderSide(color: Colors.black54, width: 1.0),
              )),
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Text("หมวดหมู่",
                style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium")),
          ],
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(90, 240, 173, 181)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.store,
                          color: Color(0xffa91f2e),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'บัญชีของฉัน',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(108, 245, 203, 200)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.wallet,
                          color: Color(0xffed3023),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'การชำระเงิน',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(108, 245, 203, 200)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.arrowRightArrowLeft,
                          color: Color(0xffed3023),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'การคืนสินค้า และการคืนเงิน',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(90, 196, 198, 243)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.solidRectangleList,
                          color: Color(0xff2e3192),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'หัวข้อทั่วไป',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(108, 245, 203, 200)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.sackDollar,
                          color: Color(0xffed3023),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'ผลิตภัณฑ์ทางการเงิน',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(108, 245, 203, 200)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.tag,
                          color: Color(0xffed3023),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'Deals & Rewards',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(125, 172, 240, 231)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.truck,
                          color: Color(0xff18baa5),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'การจัดการคำสั่งซื้อ และการจัดส่ง',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(139, 240, 235, 144)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.userGroup,
                          color: Color.fromARGB(255, 167, 159, 10),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'ผู้ขาย และ พาร์ทเนอร์',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(108, 245, 203, 200)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: const Icon(
                          FontAwesomeIcons.utensils,
                          color: Color(0xffed3023),
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Flexible(
                    child: Text(
                      'ShopeeFood',
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: const [
            Text(
              "แจ้งปัญหาการใช้งานเพิ่มเติม?",
              style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xfff3f3f3),
              borderRadius: BorderRadius.circular(5)),
          child: Material(
            color: Colors.transparent,
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onTap: () {
                Navigator.of(context).pushNamed("/sendmail");
              },
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: const Color.fromARGB(90, 240, 173, 181)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 0),
                    child: const Icon(
                      FontAwesomeIcons.envelope,
                      color: Color(0xffa91f2e),
                      size: 16,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Email',
                style: TextStyle(fontSize: 14),
              ),
              subtitle: const Text(
                'แจ้งปัญหาเพิ่มเติม',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
