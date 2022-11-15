import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodies/Home/waiting.dart';
// import 'package:flutter_otp_verification/utils/fade_animation.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constant.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';

class Shift extends StatefulWidget {
  const Shift({Key? key}) : super(key: key);

  @override
  State<Shift> createState() => _ShiftState();
}

class _ShiftState extends State<Shift> {
  List locations = [
    'Veg',
    'Non-Veg',
    'Chineese',
    'Fast Food',
    'South Indian',
  ]; // Option 2

  String? _selectedLocation;

  // late String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const Border(
            bottom: BorderSide(color: Color(0xffF4F4F4), width: 1.5)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text('SHIFT STATUS',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(
              children: [
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: GestureDetector(
                //     onTap: () => Navigator.pop(context),
                //     child: Icon(
                //       Icons.arrow_back,
                //       size: 32,
                //       color: Colors.black54,
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/shift.png',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Turn On Start Shift to go for delivery ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                    // letterSpacing: 1.7,
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                  content: SizedBox(
                                    height: 400,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/status.png',
                                          height: 119,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15, left: 15),
                                          child: DropdownButtonHideUnderline(
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 19),
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color.fromARGB(
                                                        254, 251, 251, 251),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(9),
                                                    ),
                                                  ),
                                                  width: double.infinity,
                                                  child: DropdownButton<String>(
                                                    //style: Icons.account_box,
                                                    //style: TextStyle(background: ),
                                                    iconDisabledColor:
                                                        Colors.blue,
                                                    isExpanded: true,
                                                    //underline: ,
                                                    hint: const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.0),
                                                      child:
                                                          Text('UK AC -0001'),
                                                    ), // Not necessary for Option 0
                                                    value: _selectedLocation,
                                                    onChanged: (newValue) {
                                                      setState(() {
                                                        _selectedLocation =
                                                            newValue;
                                                      });
                                                    },
                                                    items: locations
                                                        .map((location) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        child: Text(location),
                                                        value: location,
                                                      );
                                                    }).toList(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 49,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 499,
                                            color: const Color(0xFFF2F2F1),
                                            child: SizedBox.expand(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15,
                                                            left: 15),
                                                    child: const TextField(
                                                      decoration: InputDecoration(
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                          hintText:
                                                              "Enter the vehicle number"),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const Waiting()),
                                                      );
                                                    },
                                                    child: Container(
                                                      height: 50,
                                                      width: 350,
                                                      decoration: BoxDecoration(
                                                        color: primary,
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 15),
                                                        child: Text(
                                                          "SUBMIT",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  // ElevatedButton(
                                                  //   onPressed: () {
                                                  //     Navigator.push(
                                                  //       context,
                                                  //       MaterialPageRoute(
                                                  //           builder: (context) =>
                                                  //               const Waiting()),
                                                  //     );
                                                  //   },
                                                  //   style: ButtonStyle(
                                                  //     backgroundColor:
                                                  //         MaterialStateProperty
                                                  //             .all<Color>(
                                                  //                 primary),
                                                  //   ),
                                                  //   child: const Text(
                                                  //     'CONTINUE',
                                                  //     style: TextStyle(
                                                  //         fontSize: 15),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(primary),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'START SHIFT',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
