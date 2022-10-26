import 'package:bizfull/models/price_more_model.dart';
import 'package:flutter/material.dart';

Widget optChoose(List<PriceMoreModel> listPriceMore, int posPriceMoreChoose,
    void Function(int pos) updateChoosePrice) {
  return Flexible(
    child: Wrap(
      children: [
        ...listPriceMore
            .map((item) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      updateChoosePrice(listPriceMore.indexOf(item));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                              color: posPriceMoreChoose ==
                                      listPriceMore.indexOf(item)
                                  ? const Color(0xffed3023)
                                  : Colors.black26)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          item.pdmName,
                          style: TextStyle(
                              color: posPriceMoreChoose ==
                                      listPriceMore.indexOf(item)
                                  ? const Color(0xffed3023)
                                  : Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
        // Padding(
        //   padding: const EdgeInsets.all(5.0),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(7),
        //           border: Border.all(color: const Color(0xffed3023))),
        //       child: const Padding(
        //         padding:
        //             EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        //         child: Text(
        //           "GlassyX",
        //           style: TextStyle(color: Color(0xffed3023)),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(5.0),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(7),
        //           border: Border.all(color: Colors.black26)),
        //       child: const Padding(
        //         padding:
        //             EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        //         child: Text(
        //           "GlassyX500",
        //           style: TextStyle(color: Colors.black54),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(5.0),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(7),
        //           border: Border.all(color: Colors.black26)),
        //       child: const Padding(
        //         padding:
        //             EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        //         child: Text(
        //           "GlassyX20",
        //           style: TextStyle(color: Colors.black54),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(5.0),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(7),
        //           border: Border.all(color: Colors.black26)),
        //       child: const Padding(
        //         padding:
        //             EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        //         child: Text(
        //           "GlassyZ",
        //           style: TextStyle(color: Colors.black54),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(5.0),
        //   child: InkWell(
        //     onTap: () {},
        //     child: Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(7),
        //           border: Border.all(color: Colors.black26)),
        //       child: const Padding(
        //         padding:
        //             EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        //         child: Text(
        //           "GlassyZ500",
        //           style: TextStyle(color: Colors.black54),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}

Widget optChoose2(List<PriceMoreModel> listPriceMore, int posPriceMoreChoose,
    void Function(int pos) updateChoosePrice) {
  return Wrap(
    children: [
      ...listPriceMore
          .map((item) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () {
                    updateChoosePrice(listPriceMore.indexOf(item));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                            color: posPriceMoreChoose ==
                                    listPriceMore.indexOf(item)
                                ? const Color(0xffed3023)
                                : Colors.black26)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Text(
                        item.pdmName,
                        style: TextStyle(
                            color: posPriceMoreChoose ==
                                    listPriceMore.indexOf(item)
                                ? const Color(0xffed3023)
                                : Colors.black54),
                      ),
                    ),
                  ),
                ),
              ))
          .toList(),
      // Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: InkWell(
      //     onTap: () {},
      //     child: Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(7),
      //           border: Border.all(color: const Color(0xffed3023))),
      //       child: const Padding(
      //         padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      //         child: Text(
      //           "GlassyX",
      //           style: TextStyle(color: Color(0xffed3023)),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: InkWell(
      //     onTap: () {},
      //     child: Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(7),
      //           border: Border.all(color: Colors.black26)),
      //       child: const Padding(
      //         padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      //         child: Text(
      //           "GlassyX500",
      //           style: TextStyle(color: Colors.black54),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: InkWell(
      //     onTap: () {},
      //     child: Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(7),
      //           border: Border.all(color: Colors.black26)),
      //       child: const Padding(
      //         padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      //         child: Text(
      //           "GlassyX20",
      //           style: TextStyle(color: Colors.black54),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: InkWell(
      //     onTap: () {},
      //     child: Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(7),
      //           border: Border.all(color: Colors.black26)),
      //       child: const Padding(
      //         padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      //         child: Text(
      //           "GlassyZ",
      //           style: TextStyle(color: Colors.black54),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(5.0),
      //   child: InkWell(
      //     onTap: () {},
      //     child: Container(
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(7),
      //           border: Border.all(color: Colors.black26)),
      //       child: const Padding(
      //         padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      //         child: Text(
      //           "GlassyZ500",
      //           style: TextStyle(color: Colors.black54),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    ],
  );
}
