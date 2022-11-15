import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodies/Subscriotions/payment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Constant.dart';

class Subscriotions extends StatefulWidget {
  const Subscriotions({Key? key}) : super(key: key);

  @override
  State<Subscriotions> createState() => _SubscriotionsState();
}

class _SubscriotionsState extends State<Subscriotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        shape: const Border(
          bottom: BorderSide(color: Color(0xffF4F4F4), width: 1.5),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // centerTitle: false,
        // automaticallyImplyLeading: false,
        title: Text('Subscriotions',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 35.h,
                decoration: const BoxDecoration(
                  color: primary,
                  boxShadow: [
                    BoxShadow(
                      // color: Colors.black12,
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 3.0,
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
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 70),
                          child: Image.asset(
                            "assets/images/Ellipse 1.png",
                          ),
                        ),
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                "From ₹ 2500",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "For 1 month",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF9F9F9),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '''Discounts of up to 30% on delivery \nand 40% on dining at pro restaurants''',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xffF5F5F5),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 20),
                          child: Image.asset(
                            "assets/images/Ellipse 1.png",
                          ),
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '''Cancel membership anytime and get\n a refund, no question asked''',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xffF5F5F5),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff1E1F20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 36, vertical: 10),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20.0, left: 20, top: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "What you get with pro",
                                            // textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0, top: 40),
                                              child: Image.asset(
                                                "assets/images/Ellipse 2.png",
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                // Text(
                                                //   "What you get with pro",
                                                //   // textAlign: TextAlign.center,
                                                //   style: TextStyle(
                                                //     fontSize: 20,
                                                //     fontWeight: FontWeight.bold,
                                                //     color: Colors.black,
                                                //   ),
                                                // ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  '''Discounts of up to 30% on delivery \nand 40% on dining at pro restaurants''',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.bold,
                                                    color: Color(0xff1E1F20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                          Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0, top: 20),
                                              child: Image.asset(
                                                "assets/images/Ellipse 2.png",
                                              ),
                                            ),
                                            Column(
                                              children: const [
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  '''Cancel membership anytime and get a \nrefund, no question asked''',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.bold,
                                                    color: Color(0xff1E1F20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20.0, top: 20),
                                              child: Image.asset(
                                                "assets/images/Ellipse 2.png",
                                              ),
                                            ),
                                            Column(
                                              children: const [
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  '''25,000+ restaurants offer epic deals for pro\n members''',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.bold,
                                                    color: Color(0xff1E1F20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 343,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(0xffE5E5E5),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: const [
                                                          Text(
                                                            "1 Months Membership",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              // fontWeight: FontWeight.bold,
                                                              color: Color(
                                                                  0xff1E1F20),
                                                            ),
                                                          ),
                                                          Text(
                                                            "2500",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              // fontWeight: FontWeight.bold,
                                                              color: Color(
                                                                  0xff1E1F20),
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/paytm.png",
                                                      height: 30,
                                                    ),
                                                    const Text(
                                                      "Pay using",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        // fontWeight: FontWeight.bold,
                                                        color:
                                                            Color(0xff787878),
                                                      ),
                                                    ),
                                                    const Spacer(),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Payment()),
                                                        );
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: primary,
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 36,
                                                                vertical: 10),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4)),
                                                      ),
                                                      child: const Text(
                                                        "PAYMENT",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ]),
                                              const Text(
                                                "Paytm UPI",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  // fontWeight: FontWeight.bold,
                                                  color: Color(0xff1E1F20),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: const Text(
                              "SUBSCRIBE",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffFFFFFF)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 35.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // color: Colors.black12,
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 3.0,
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
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 70),
                          child: Image.asset(
                            "assets/images/Ellipse 2.png",
                          ),
                        ),
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                "From ₹ 3500",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "For 3 month",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '''Discounts of up to 30% on delivery \nand 40% on dining at pro restaurants''',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff1E1F20),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 20),
                          child: Image.asset(
                            "assets/images/Ellipse 2.png",
                          ),
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '''Cancel membership anytime and get\n a refund, no question asked''',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff1E1F20),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: primary,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 36, vertical: 10),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "SUBSCRIBE",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffFFFFFF)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 35.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      // color: Colors.black12,
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 3.0,
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
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 70),
                          child: Image.asset(
                            "assets/images/Ellipse 2.png",
                          ),
                        ),
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                "From ₹ 5000",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "For 1 year",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '''Discounts of up to 30% on delivery \nand 40% on dining at pro restaurants''',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff1E1F20),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 20),
                          child: Image.asset(
                            "assets/images/Ellipse 2.png",
                          ),
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '''Cancel membership anytime and get\n a refund, no question asked''',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xff1E1F20),
                              ),
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: primary,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 36, vertical: 10),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            onPressed: () {},

                            // color: primary,

                            child: const Text(
                              "SUBSCRIBE",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffFFFFFF)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
