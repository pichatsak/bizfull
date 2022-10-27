import 'dart:convert';
import 'dart:typed_data';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class SendReportMBPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SendReportMBPage({Key? key}) : super(key: key);

  @override
  State<SendReportMBPage> createState() => _SendReportMBPageState();
}

class _SendReportMBPageState extends State<SendReportMBPage> {
  final box = GetStorage();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController titleInp = TextEditingController();
  TextEditingController msgInp = TextEditingController();
  List<int>? selectImg;
  Uint8List? _byteData;
  bool isSelectImg = false;

  void saveAndImage() async {
    var url = "${Global.hostName}/send_report.php";
    var request = http.MultipartRequest("POST", Uri.parse(url));
    request.files.add(http.MultipartFile.fromBytes("imgup", selectImg!,
        filename: "upimg.png"));
    request.fields['report_title'] = titleInp.text;
    request.fields['report_msg'] = msgInp.text;
    request.fields['status_img'] = "yes";
    request.fields['user_id'] = box.read("user_id").toString();
    var respond = await request.send();
    if (respond.statusCode == 200) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) => dialogSuccessReport(
              context, "ทางเราจะเร่งตรวจปัญหาที่ท่านแจ้งเข้ามา"));
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "เกิดข้อมูลผิดผลาดกรุณาลองใหม่อีกครั้ง"));
    }
  }

  void saveOnlyMsg() async {
    var dataForm = {
      "report_msg": msgInp.text,
      "report_title": msgInp.text,
      "status_img": "no",
      "user_id": box.read("user_id").toString(),
    };
    var url = "${Global.hostName}/send_report.php";
    var res = await http.post(Uri.parse(url), body: dataForm);
    var getData = json.decode(res.body);
    if (getData["status"] == "ok") {
      // ignore: use_build_context_synchronously
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) => dialogSuccessReport(
              context, "ทางเราจะเร่งตรวจปัญหาที่ท่านแจ้งเข้ามา"));
    } else if (getData["status"] == "no") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "เกิดข้อมูลผิดผลาดกรุณาลองใหม่อีกครั้ง"));
    }
  }

  void pickImage() async {
    html.FileUploadInputElement uploadInputElement =
        html.FileUploadInputElement();
    uploadInputElement.multiple = false;
    uploadInputElement.click();
    uploadInputElement.onChange.listen((event) {
      final fileGet = uploadInputElement.files;
      final fileFn = fileGet![0];
      final reader = html.FileReader();

      reader.onLoad.listen((event) {
        setState(() {
          isSelectImg = true;
          _byteData =
              // ignore: prefer_const_constructors
              Base64Decoder().convert(reader.result.toString().split(",").last);
          selectImg = _byteData;
        });
      });
      reader.readAsDataUrl(fileFn);
    });
    // final fromPicker = await ImagePickerWeb.getImageAsWidget();
    // if (fromPicker != null) {
    //   setState(() {
    //     _pickedImages.clear();
    //     _pickedImages.add(fromPicker);
    //   });
    // }
  }

  void validateSave() {
    if (formKey.currentState!.validate()) {
      if (isSelectImg) {
        saveAndImage();
      } else {
        saveOnlyMsg();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double wP;
    double zH;
    double zB;
    double pM;
    double fMM;
    double fMM1;
    if (Device.width > 991) {
      wP = 664;
      zH = 0;
      pM = 30;
      zB = 15;
      fMM = 16;
      fMM1 = 14;
    } else if (Device.width >= 768 && Device.width <= 991) {
      wP = 664;
      zH = 0;
      zB = 35;
      pM = 20;
      fMM = 16;
      fMM1 = 14;
    } else if (Device.width >= 576 && Device.width <= 767) {
      wP = 664;
      zH = 0;
      zB = 35;
      pM = 20;
      fMM = 16;
      fMM1 = 14;
    } else {
      wP = double.infinity;
      zH = 25;
      zB = 35;
      pM = 20;
      fMM = 15;
      fMM1 = 13;
    }
    return SizedBox(
      width: wP,
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(pM),
          child: Column(
            children: [
              Row(children: [
                Text("แจ้งปัญหาการใช้งานเพิ่มเติม",
                    style:
                        TextStyle(fontSize: fMM, fontFamily: "Prompt-Medium"))
              ]),
              Row(children: [
                Text("หากคุณมีคำถามหรือคำแนะนำอื่นๆ สามารถแจ้งเราได้ที่นี่",
                    style: TextStyle(fontSize: fMM1, color: Colors.black87))
              ]),
              const SizedBox(height: 15),
              Container(height: 1, color: Colors.black12),
              const SizedBox(height: 30),
              Column(
                children: [
                  Column(
                    children: [
                      Row(children: const [
                        Text("หัวข้อ", style: TextStyle(fontSize: 13))
                      ]),
                      const SizedBox(height: 5),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "กรุณากรอกหัวข้อ";
                          }
                          return null;
                        },
                        controller: titleInp,
                        cursorColor: Colors.red,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Colors.black38),
                            isDense: true,
                            contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Text("ข้อความ",
                          style: TextStyle(
                              fontSize: 14, fontFamily: "Prompt-Medium")),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("กรุณาแจ้งเพิ่มเติม เกี่ยวกับปัญหาที่ท่านได้รับ",
                          style: TextStyle(fontSize: 13)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: msgInp,
                    cursorColor: Colors.red,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "กรุณากรอกข้อความ";
                      }
                      return null;
                    },
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: "Input",
                        hintStyle: TextStyle(color: Colors.black38),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                        )),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Text("อัปโหลดรูปภาพ",
                          style: TextStyle(
                              fontSize: 14, fontFamily: "Prompt-Medium")),
                    ],
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                        "สามารถอัพโหลดไฟล์รูปภาพ และต้องมีขนาดไม่เกิน 4.5MB",
                        style: TextStyle(fontSize: 13)),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          pickImage();
                        },
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.black12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 3),
                                    child: const Icon(
                                      FontAwesomeIcons.upload,
                                      color: Color(0xffa91f2e),
                                      size: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  const Text("อัพโหลดรูปภาพ",
                                      style: TextStyle(fontSize: 13))
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              isSelectImg
                  ? Image.memory(
                      _byteData!,
                      width: 200,
                      height: 200,
                    )
                  : const Center(),
              SizedBox(height: zB),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffed3023)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ))),
                    onPressed: () {
                      validateSave();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 8),
                      child: Row(
                        children: const [
                          Text(
                            "แจ้งปัญหา",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: zH),
            ],
          ),
        ),
      ),
    );
  }
}
