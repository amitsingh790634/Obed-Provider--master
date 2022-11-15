import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:foodies/Order/report.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constant.dart';
import 'dispute.dart';
import 'help.dart';
import 'order_details2.dart';

class CompletedTask extends StatefulWidget {
  @override
  _CompletedTaskState createState() => _CompletedTaskState();
}

enum _MenuValues {
  report,
  dispute,
  help,
}

class _CompletedTaskState extends State<CompletedTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        shape: const Border(
          bottom: BorderSide(color: Color(0xffF4F4F4), width: 1.5),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        // automaticallyImplyLeading: false,
        title: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "ORDER #8888",
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              Text(
                "Delivered | 1item, \$250 ",
                style: TextStyle(color: Color(0xff959595), fontSize: 14.0),
              ),
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Image.asset("assets/images/location2.png",
                      height: 100, width: 80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "FUNKIES",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Tarc Colony, Megbag winson road",
                        style: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ]),
                Row(children: [
                  Image.asset("assets/images/home2.png",
                      height: 100, width: 80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "HOME",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Tarc Colony, Megbag winson road",
                        style: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ]),
                Row(children: [
                  Image.asset("assets/images/check.png", height: 30, width: 80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Order Delivered Succesfully",
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, left: 70.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [],
                  ),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "#8888",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFF6D00),
                          ),
                        ),
                        Text(
                          "8:30PM",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        ),
                      ]),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Spicy Prawn Tikka x 1",
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                            // color: primary,
                          ),
                        ),
                        Text(
                          "\$150",
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            // color: Colors.black38
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Spicy Fish Tikka x 1",
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                            // color: primary,
                          ),
                        ),
                        Text(
                          "\$100",
                          style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            // color: Colors.black38
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0, left: 20),
                  child: DottedLine(
                    // dashLength: 4.0,
                    dashColor: Colors.black38,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Item Total",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Text(
                          "\$220",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        ),
                      ]),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Service Tax",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Text(
                          "\$30",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ]),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Delivery Chrages",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Text(
                          "\$20",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20, left: 20.0),
                  child: Divider(
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 16,
                            // color: Colors.black38
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "\$250",
                          style: TextStyle(
                            fontSize: 15,
                            // color: Colors.black38
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.black26,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black26,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Payment Mode",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            // color: primary,
                          ),
                        ),
                        Text(
                          "CASH",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: primary),
                        ),
                      ]),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "No. of Item",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        ),
                      ]),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Bill Amount",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Text(
                          "\$250",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ]),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Bill Paid",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Text(
                          "\$300",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                      ]),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Returned",
                          style:
                              TextStyle(fontSize: 16, color: primary),
                        ),
                        Text(
                          "\$50",
                          style:
                              TextStyle(fontSize: 15, color: primary),
                        ),
                      ]),
                ),
                const Divider(
                  color: Colors.black26,
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
