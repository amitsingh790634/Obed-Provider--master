import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constant.dart';
import '../Order/completed_task.dart';
import '../Order/order_details.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  SingingCharacter? _character = SingingCharacter.lafayette;
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
        title: Text('Manage Payment',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("Wallet",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(children: [
                const SizedBox(height: 20),
                Container(
                  height: 290,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffebebeb)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: Text(
                          'Paytm',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          activeColor: primary,
                          value: 1,
                          groupValue: "",
                          onChanged: (value) {
                            setState(() {
                              // offers = value as int;
                            });
                          },
                        ),
                        trailing: Image.asset("assets/images/paytm1.png",
                            height: 30.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          'Mobiwiki',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          activeColor: primary,
                          value: 1,
                          groupValue: "",
                          onChanged: (value) {
                            setState(() {
                              // offers = value as int;
                            });
                          },
                        ),
                        trailing:
                            Image.asset("assets/images/mob.png", height: 30.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          'Amazon pay',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          activeColor: primary,
                          value: 1,
                          groupValue: "",
                          onChanged: (value) {
                            setState(() {
                              // offers = value as int;
                            });
                          },
                        ),
                        trailing: Image.asset("assets/images/amazon.png",
                            height: 30.0),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("UPI",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(children: [
                const SizedBox(height: 20),
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffebebeb)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: Text(
                          'Add new UPI ID',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text('Pay using supported UPI apps'),
                        leading: Radio(
                          activeColor: primary,
                          value: 1,
                          groupValue: "",
                          onChanged: (value) {
                            setState(() {
                              // offers = value as int;
                            });
                          },
                        ),
                        trailing:
                            Image.asset("assets/images/upi.png", height: 70.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("Net Banking & Cards",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(children: [
                const SizedBox(height: 20),
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffebebeb)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: Text(
                          'Net Banking',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text('Choose bank'),
                        leading: Radio(
                          activeColor: primary,
                          value: 1,
                          groupValue: "",
                          onChanged: (value) {
                            setState(() {
                              // offers = value as int;
                            });
                          },
                        ),
                        // trailing: Image.asset("assets/images/upi.png", height: 70.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      ListTile(
                        title: Text(
                          'Credit & Debit cards',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text('Add new card for payment'),
                        leading: Radio(
                          activeColor: primary,
                          value: 1,
                          groupValue: "",
                          onChanged: (value) {
                            setState(() {
                              // offers = value as int;
                            });
                          },
                        ),
                        // trailing: Image.asset("assets/images/upi.png", height: 70.0),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primary, // background

                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)), // foreground
                ),
                // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                onPressed: () {},
                // color: primary,
                // padding:
                //     const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
                // elevation: 2,
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(4)),
                child: const Text(
                  "DONE",
                  style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }
