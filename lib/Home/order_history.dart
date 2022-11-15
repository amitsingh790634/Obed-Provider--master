import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constant.dart';

class ORDERHISTORY extends StatefulWidget {
  @override
  _ORDERHISTORYState createState() => _ORDERHISTORYState();
}

String dropdownvalue = 'Today';

// List of items in our dropdown menu
var items = [
  'Today',
  'Tomorrow',
  'Yesterday',
];

class _ORDERHISTORYState extends State<ORDERHISTORY> {
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
        title: Text('ORDER HISTORY',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: primary,
                  ),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      const SizedBox(height: 20),
                      Container(
                        height: 230,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0, left: 20),
                                child: Image.asset("assets/images/pizza.png",
                                    height: 100, width: 80),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "DOMINO'S",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, right: 20),
                                    child: Text(
                                      "#000085",
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                        color: primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 25.0, left: 26.56),
                                child: Column(children: [
                                  const SizedBox(height: 20),
                                  Container(
                                    height: 40,
                                    width: 130,
                                    decoration: const BoxDecoration(
                                      color: primary,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 20.0,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        bottomLeft: Radius.circular(50),
                                      ),
                                    ),
                                    child: const Center(
                                      child: (Text(
                                        "DELIVERY",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xffFFF8F3),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                    ),
                                  ),
                                ]),
                              ),
                            ]),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                            child: Image.asset(
                                                "assets/images/clock.png",
                                                width: 30)),
                                        SizedBox(height: 15),
                                        Text(
                                          "8:18AM",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                            child: Image.asset(
                                                "assets/images/item.png",
                                                width: 30)),
                                        SizedBox(height: 15),
                                        const Text(
                                          "2 ITEMS",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                            child: Image.asset(
                                                "assets/images/pay.png",
                                                width: 30)),
                                        SizedBox(height: 15),
                                        const Text(
                                          "400",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  onTap: () {
                    print('clicked');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(children: [
                    SizedBox(height: 20),
                    Container(
                      height: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20.0, left: 20),
                              child: Image.asset("assets/images/pizza.png",
                                  height: 100, width: 80),
                            ),
                            Column(
                              children: const [
                                Text(
                                  "DOMINO'S",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, right: 20),
                                  child: Text(
                                    "#000085",
                                    style: TextStyle(
                                      fontSize: 16,
                                      // fontWeight: FontWeight.bold,
                                      color: primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 25.0, left: 26.56),
                              child: Column(children: [
                                const SizedBox(height: 20),
                                Container(
                                  height: 40,
                                  width: 130,
                                  decoration: const BoxDecoration(
                                    color: primary,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20.0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    ),
                                  ),
                                  child: const Center(
                                    child: (Text(
                                      "CANCELLED",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xffFFF8F3),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                          child: Image.asset(
                                              "assets/images/clock.png",
                                              width: 30)),
                                      SizedBox(height: 15),
                                      Text(
                                        "8:18AM",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                          child: Image.asset(
                                              "assets/images/item.png",
                                              width: 30)),
                                      SizedBox(height: 15),
                                      const Text(
                                        "2 ITEMS",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                          child: Image.asset(
                                              "assets/images/pay.png",
                                              width: 30)),
                                      SizedBox(height: 15),
                                      const Text(
                                        "400",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
