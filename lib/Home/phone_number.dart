import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Constant.dart';
import 'otp.dart';

class PhoneNumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(
          height: 350,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
          //   color: new primary,
          //   gradient: LinearGradient(colors: [(new  primary), new Color(0xffF2861E)],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //   ),
          // ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 120),
                  child: Image.asset(
                    "assets/images/splash.png",
                    height: 170,
                    width: 170,
                  ),
                ),
                const Text(
                  "FOODIE PARTNER",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 1.7),
                )
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 30, right: 30, top: 70),
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(offset: Offset(0, 10), color: Color(0xffEEEEEE)),
            ],
          ),
          child: const TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[],
            textAlign: TextAlign.center,
            cursorColor: primary,
            decoration: InputDecoration(
              hintText: "Enter Mobile Number",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Otp()),
            );
            // Write Click Listener Code Here.
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
            // padding: const EdgeInsets.only(left: 20, right: 20),
            padding: EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                    // offset: Offset(0, 10),
                    blurRadius: 6,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const Text(
              "CONTINUE",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.7,
              ),
            ),
          ),
        ),
      ],
    )));
  }
}
