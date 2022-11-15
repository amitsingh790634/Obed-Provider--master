import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:foodies/Home/dashboard.dart';
import 'package:foodies/Order/report.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../Constant.dart';
import '../Home/waiting.dart';
import 'dispute.dart';
import 'help.dart';

class OrderDetails2 extends StatefulWidget {
  @override
  _OrderDetails2State createState() => _OrderDetails2State();
}

class _OrderDetails2State extends State<OrderDetails2> {
  var isLoad = 0;
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
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: primary,
              ),
              onPressed: () {
                // do something
              },
            )
          ]),
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: primary,
                    // image: const DecorationImage(
                    //   image: AssetImage(
                    //     'assets/images/scooter1.png',
                    //   ),
                    //   // fit: BoxFit.fill,
                    // ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      // width: 1,
                      color: Color(0xff888888),
                    ),
                    // color: const Color(0xff888888),
                  ),
                  child: Image.asset('assets/images/scooter1.png',
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: isLoad == 1 ||
                          isLoad == 2 ||
                          isLoad == 3 ||
                          isLoad == 4 ||
                          isLoad == 5
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primary,
                            // image: const DecorationImage(
                            //   image: AssetImage(
                            //     'assets/images/scooter1.png',
                            //   ),
                            //   // fit: BoxFit.fill,
                            // ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              // width: 1,
                              color: Color(0xff888888),
                            ),
                            // color: const Color(0xff888888),
                          ),
                          child: Image.asset(
                              'assets/images/food-restaurant.png',
                              color: Colors.white),
                        )
                      : Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/food-restaurant.png',
                              ),
                              // fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                                // width: 1,
                                // color: Color(0xff888888),
                                ),
                            // color: Colors.orange,
                          ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: isLoad == 2 ||
                          isLoad == 3 ||
                          isLoad == 4 ||
                          isLoad == 5
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primary,
                            // image: const DecorationImage(
                            //   image: AssetImage(
                            //     'assets/images/scooter1.png',
                            //   ),
                            //   // fit: BoxFit.fill,
                            // ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              // width: 1,
                              color: Color(0xff888888),
                            ),
                            // color: const Color(0xff888888),
                          ),
                          child: Image.asset('assets/images/take-away 1.png',
                              color: Colors.white),
                        )
                      : Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/take-away 1.png',
                              ),
                              // fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              // width: 1,
                              color: Color(0xff888888),
                            ),
                            // color: const Color(0xff888888),
                          ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: isLoad == 3 || isLoad == 4 || isLoad == 5
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primary,
                            // image: const DecorationImage(
                            //   image: AssetImage(
                            //     'assets/images/scooter1.png',
                            //   ),
                            //   // fit: BoxFit.fill,
                            // ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              // width: 1,
                              color: Color(0xff888888),
                            ),
                            // color: const Color(0xff888888),
                          ),
                          child: Image.asset('assets/images/scooter1.png',
                              color: Colors.white),
                        )
                      : Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/scooter1.png',
                              ),
                              // fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              // width: 1,
                              color: Color(0xff888888),
                            ),
                            // color: const Color(0xff888888),
                          ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: isLoad == 4 || isLoad == 5
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primary,
                            // image: const DecorationImage(
                            //   image: AssetImage(
                            //     'assets/images/scooter1.png',
                            //   ),
                            //   // fit: BoxFit.fill,
                            // ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              // width: 1,
                              color: Color(0xff888888),
                            ),
                            // color: const Color(0xff888888),
                          ),
                          child: Image.asset('assets/images/wallet 1.png',
                              color: Colors.white),
                        )
                      : Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/wallet 1.png',
                              ),
                              // fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              // width: 1,
                              color: Color(0xff888888),
                            ),
                            // color: const Color(0xff888888),
                          ),
                        ),
                ),
              ],
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
                    isLoad == 2 || isLoad == 3 || isLoad == 4 || isLoad == 5
                        ? Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20.0, left: 20),
                              child: Image.asset("assets/images/pizza.png",
                                  height: 100, width: 80),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: 'BRITO',
                                    style: TextStyle(
                                      // fontFamily: 'Your App Font Family',
                                      fontSize: 18,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.w500,
                                    ),
                                    // children: [
                                    //   TextSpan(
                                    //     text: '(3 kms away)',
                                    //     style: TextStyle(
                                    //         fontSize: 16,
                                    //         // fontWeight: FontWeight.w500,
                                    //         color: primary),
                                    //   ),
                                    // ],
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
                          ])
                        : Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20.0, left: 20),
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          isLoad++;
                        });
                        if (isLoad == 3) {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  content: Container(
                                    height: 230,
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 50,
                                          child: Image.asset(
                                            'assets/images/otp.png',
                                          ),
                                        ),
                                        Text('Enter the Otp'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        OTPTextField(
                                          length: 4,
                                          // width: 10,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          fieldWidth: 20,
                                          style: TextStyle(fontSize: 17),
                                          textFieldAlignment:
                                              MainAxisAlignment.spaceAround,
                                          fieldStyle: FieldStyle.underline,
                                          onCompleted: (pin) {
                                            print("Completed: " + pin);
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          child: Container(
                                            height: 40,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            color: primary,
                                            child: Center(
                                              child: (Text(
                                                'SUBMIT',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                            ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              isLoad++;
                                              Navigator.pop(context);
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }
                        if (isLoad == 5) {
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "FEEDBACK",
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "How was the delivery ?",
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {},
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      // height: 40,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          100,
                                                        ),
                                                      ),
                                                      // color: Colors.orange,
                                                      child: Image.asset(
                                                        "assets/images/terrible.png",
                                                        // color: Colors.orange,
                                                        height: 40,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text("Terrible"),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/bad.png",
                                                    height: 40,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text("Bad"),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/okay.png",
                                                    height: 40,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text("Okay"),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/good.png",
                                                    height: 40,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text("Good"),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/superb.png",
                                                    height: 40,
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text("Superb"),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Give some feedback in words.",
                                            style: TextStyle(
                                                // color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black12),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextField(
                                                decoration: new InputDecoration(
                                                    border: InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    disabledBorder:
                                                        InputBorder.none,
                                                    hintText: "Hint here"),
                                                keyboardType:
                                                    TextInputType.multiline,
                                                minLines:
                                                    1, //Normal textInputField will be displayed
                                                maxLines:
                                                    5, // when user presses enter it will adapt to it
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DashboardPage()),
                                            );
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 300,
                                            decoration: BoxDecoration(
                                              color: primary,
                                              border: Border.all(
                                                  color: Colors.black12),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Text(
                                                "SUBMIT",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15),
                        child: isLoad == 4 || isLoad == 5
                            ? Container(
                                height: 50,
                                width: 350,
                                decoration: const BoxDecoration(
                                  color: primary,
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
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          "PAYMENT RECIEVED",
                                          style: TextStyle(
                                            fontSize: 16,
                                            // fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )

                                      // isLoad == 1
                                      //     ? Text(
                                      //         "ORDER PICKED UP",
                                      //         style: TextStyle(
                                      //           fontSize: 16,
                                      //           // fontWeight: FontWeight.bold,
                                      //           color: Colors.grey,
                                      //         ),
                                      //       )
                                      //     : Text(
                                      //         "REACHED RESTAURANT",
                                      //         style: TextStyle(
                                      //           fontSize: 16,
                                      //           // fontWeight: FontWeight.bold,
                                      //           color: Colors.grey,
                                      //         ),
                                      //       ),
                                    ],
                                  ),
                                ),
                              )
                            : Container(
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
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    if (isLoad == 0) ...[
                                      Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            // image: const DecorationImage(
                                            //   image: AssetImage(
                                            //     'assets/images/food-restaurant.png',
                                            //   ),
                                            //   // fit: BoxFit.fill,
                                            // ),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              // width: 1,
                                              color: Color(0xff888888),
                                            ),
                                            color: const Color(0xff888888),
                                          ),
                                          child: Image.asset(
                                              'assets/images/food-restaurant.png',
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "REACHED RESTAURANT",
                                              style: TextStyle(
                                                fontSize: 16,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            )

                                            // isLoad == 1
                                            //     ? Text(
                                            //         "ORDER PICKED UP",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       )
                                            //     : Text(
                                            //         "REACHED RESTAURANT",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       ),
                                          ],
                                        ),
                                      ),
                                    ] else if (isLoad == 1) ...[
                                      Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            // image: const DecorationImage(
                                            //   image: AssetImage(
                                            //     'assets/images/food-restaurant.png',
                                            //   ),
                                            //   // fit: BoxFit.fill,
                                            // ),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              // width: 1,
                                              color: Color(0xff888888),
                                            ),
                                            color: const Color(0xff888888),
                                          ),
                                          child: Image.asset(
                                              'assets/images/take-away 1.png',
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "ORDER PICKED UP",
                                              style: TextStyle(
                                                fontSize: 16,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            )

                                            // isLoad == 1
                                            //     ? Text(
                                            //         "ORDER PICKED UP",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       )
                                            //     : Text(
                                            //         "REACHED RESTAURANT",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       ),
                                          ],
                                        ),
                                      ),
                                    ] else if (isLoad == 2) ...[
                                      Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            // image: const DecorationImage(
                                            //   image: AssetImage(
                                            //     'assets/images/food-restaurant.png',
                                            //   ),
                                            //   // fit: BoxFit.fill,
                                            // ),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              // width: 1,
                                              color: Color(0xff888888),
                                            ),
                                            color: const Color(0xff888888),
                                          ),
                                          child: Image.asset(
                                              'assets/images/scooter1.png',
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "ORDER DELIVERED",
                                              style: TextStyle(
                                                fontSize: 16,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            )

                                            // isLoad == 1
                                            //     ? Text(
                                            //         "ORDER PICKED UP",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       )
                                            //     : Text(
                                            //         "REACHED RESTAURANT",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       ),
                                          ],
                                        ),
                                      ),
                                    ] else if (isLoad == 3) ...[
                                      Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            // image: const DecorationImage(
                                            //   image: AssetImage(
                                            //     'assets/images/food-restaurant.png',
                                            //   ),
                                            //   // fit: BoxFit.fill,
                                            // ),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              // width: 1,
                                              color: Color(0xff888888),
                                            ),
                                            color: const Color(0xff888888),
                                          ),
                                          child: Image.asset(
                                              'assets/images/wallet 1.png',
                                              color: Colors.white)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              "PAYMENT PROCESS",
                                              style: TextStyle(
                                                fontSize: 16,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            )

                                            // isLoad == 1
                                            //     ? Text(
                                            //         "ORDER PICKED UP",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       )
                                            //     : Text(
                                            //         "REACHED RESTAURANT",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       ),
                                          ],
                                        ),
                                      ),
                                    ] else ...[
                                      // Container(
                                      //   height: 40.0,
                                      //   width: 40.0,
                                      //   decoration: BoxDecoration(
                                      //     // image: const DecorationImage(
                                      //     //   image: AssetImage(
                                      //     //     'assets/images/food-restaurant.png',
                                      //     //   ),
                                      //     //   // fit: BoxFit.fill,
                                      //     // ),
                                      //     shape: BoxShape.circle,
                                      //     border: Border.all(
                                      //       // width: 1,
                                      //       color: primary,
                                      //     ),
                                      //     color: const Color(0xff888888),
                                      //   ),
                                      //   // child: Image.asset(
                                      //   //     'assets/images/take-away 1.png',
                                      //   //     color: Colors.white)
                                      // ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "PAYMENT RECIEVED",
                                              style: TextStyle(
                                                fontSize: 16,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            )

                                            // isLoad == 1
                                            //     ? Text(
                                            //         "ORDER PICKED UP",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       )
                                            //     : Text(
                                            //         "REACHED RESTAURANT",
                                            //         style: TextStyle(
                                            //           fontSize: 16,
                                            //           // fontWeight: FontWeight.bold,
                                            //           color: Colors.grey,
                                            //         ),
                                            //       ),
                                          ],
                                        ),
                                      ),
                                    ]
                                  ],
                                ),
                              ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  _dialog() {
    return AlertDialog();
  }
}
