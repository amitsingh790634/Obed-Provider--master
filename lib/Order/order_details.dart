import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:foodies/Order/report.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constant.dart';
import 'dispute.dart';
import 'help.dart';
import 'order_details2.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

enum _MenuValues {
  report,
  dispute,
  help,
}

bool isvisible = true;

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          shape: const Border(
            bottom: BorderSide(color: Color(0xffF4F4F4), width: 1.5),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: Text('LIVE TASKS',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          actions: <Widget>[
            PopupMenuButton<_MenuValues>(
              icon: Icon(
                Icons.more_vert,
                color: primary,
              ),
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  child: Text('Report'),
                  value: _MenuValues.report,
                ),
                const PopupMenuItem(
                  child: Text('Dispute'),
                  value: _MenuValues.dispute,
                ),
                const PopupMenuItem(
                  child: Text('Help'),
                  value: _MenuValues.help,
                ),
              ],
              onSelected: (value) {
                switch (value) {
                  case _MenuValues.report:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Report()));
                    break;
                  case _MenuValues.dispute:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Dispute()));
                    break;
                  case _MenuValues.help:
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => Help()));
                }
              },
            ),
          ]),
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 15.0,
              left: 15,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        // color: Colors.black12,
                        color: Colors.grey,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Time Left",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                            ),
                          ),
                          Text(
                            "100 secs",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                            ),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  // height:230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 20.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, left: 20),
                          child: Image.asset("assets/images/pizza.png",
                              height: 100, width: 80),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'SUBWAY',
                                style: TextStyle(
                                  // fontFamily: 'Your App Font Family',
                                  fontSize: 18,
                                  color: Colors.black,
                                  // fontWeight: FontWeight.w500,
                                ),
                                children: [
                                  TextSpan(
                                    text: '(3 kms away)',
                                    style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.w500,
                                        color: primary),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "Tarc Colony, Megbag winson road,",
                              style: TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                            const Text(
                              "United State -100987",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0, left: 70.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 35.0,
                                    width: 35.0,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/call.png',
                                        ),
                                        // fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.circle,
                                      // color: const Color(0xff888888),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 32.0,
                                    width: 32.0,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/location.png',
                                        ),
                                        // fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        // width: 1,
                                        color: primary,
                                      ),
                                      // color: const Color(0xff888888),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                                  color: primary,
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
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black38),
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
                            children: [
                              Text(
                                "Service Tax",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black38),
                              ),
                              Text(
                                "\$30",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
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
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black38),
                              ),
                              Text(
                                "\$20",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
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
                            children: [
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
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderDetails2()),
                            );
                          },
                          child: Container(
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.black12,
                                  color: Colors.grey,
                                  offset: Offset(2.0, 5.0),
                                  blurRadius: 5.0,
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/scooter.png',
                                        ),
                                        // fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        // width: 1,
                                        color: Color(0xff888888),
                                      ),
                                      color: const Color(0xff888888),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "STARTED TOWARD RESTAURANT",
                                          style: TextStyle(
                                            fontSize: 16,
                                            // fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
