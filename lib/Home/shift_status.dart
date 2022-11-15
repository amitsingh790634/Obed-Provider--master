// import 'package:flutter/material.dart';

// import '../Constant.dart';

// class ShiftStatus extends StatefulWidget {
//   const ShiftStatus({Key? key}) : super(key: key);

//   @override
//   State<ShiftStatus> createState() => _TrackLocationState();
// }

// class _TrackLocationState extends State<ShiftStatus> {
//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text(
//           'SHIFT STATUS',
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         leading: const Icon(Icons.arrow_back,
//         color: Colors.black,),
//           actions: <Widget>[
//             Switch(
//               value: isSwitched,
//               onChanged: (value) {
//                 setState(() {
//                   isSwitched = value;
//                   print(isSwitched);
//                 });
//               },
//               activeTrackColor: primary,
//               activeColor: primary,
//             ),
//           ]
//       ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           // 1.h.heightBox,
//           Container(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(70),
//                   child: Stack(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.only(left: 13, top: 50),
//                         width: 2,
//                         height: 340,
//                         color: Colors.grey[300],
//                         child: Container(),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           statusWidget(
//                             'play',
//                             "Start Shift",
//                             "9:30AM",
//                             true,
//                           ),
//                           statusWidget(
//                             'pause',
//                             "Break 1",
//                             "10AM to 10:30AM",
//                             false,
//                           ),
//                           statusWidget(
//                             'pause',
//                             "Break 2",
//                             "Now",
//                             false,
//                           ),
//                           statusWidget(
//                             'logout',
//                             "End Shift",
//                             "9:30PM",
//                             false,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 40,
//                 ),
//                 SizedBox(
//                   height: 50,
//                   width: 350,
//                   child: ElevatedButton(
//                     //style: ButtonStyle(backgroundColor: Colors.amber),
//                     onPressed: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => const Otp()),
//                       // );
//                     },
//                     child: const Text('END SHIFT'),
//                     style: ElevatedButton.styleFrom(
//                         primary: primary,
//                         textStyle: const TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ),
//     );
//   }

//   Container statusWidget(
//       String img,
//       String status,
//       String Substatus,
//       bool isActive,
//       ) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Row(
//         children: [
//           Container(
//             height: 30,
//             width: 30,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               image: DecorationImage(
//                 image: AssetImage(
//                   "assets/images/$img.png",
//                 ),
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//           const SizedBox(
//             width: 50,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 40,
//                 width: 40,
//               ),
//               Text(
//                 status,
//                 style: TextStyle(
//                     color: (isActive) ? (Colors.grey[400]) : Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15),
//               ),
//               Text(
//                 Substatus,
//                 style: TextStyle(
//                   color: (isActive) ? Colors.grey[400] : Colors.black,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }

import 'package:flutter/material.dart';
import 'package:foodies/Home/otp.dart';
import 'package:foodies/Home/phone_number.dart';
import 'package:sizer/sizer.dart';

import '../Constant.dart';

import 'dashboard.dart';

class ShiftStatus extends StatefulWidget {
  final String title = "Order Tracking";

  const ShiftStatus({Key? key}) : super(key: key);

  @override
  State<ShiftStatus> createState() => _TrackLocationState();
}

class _TrackLocationState extends State<ShiftStatus> {
  final String trackingStatus = 'Dispatching soon';
  final String expectedDate = 'Monday,6th November, 2021';
  final String deliveryAddress =
      'House No. Lane Street, Building,city, Pincode,State';

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'SHIFT STATUS',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeTrackColor: primary,
              activeColor: primary,
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "You Owend ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  TextSpan(
                      text: "\$250",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: primary)),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              // color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset('assets/images/play.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Start Shift",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("9:30 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: primary))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SizedBox(
                // color: Colors.amberAccent,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text("2 Orders",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                    Container(
                      // height: ,
                      width: 1,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 80,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              // color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 48),
                    child: Image.asset('assets/images/pause.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 40.0),
                          child: Text("Break 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Text("10AM - 10:30AM",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: primary)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SizedBox(
                // color: Colors.amberAccent,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text("3 Orders",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                    Container(
                      // height: ,
                      width: 1,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 80,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              // color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Image.asset('assets/images/pause.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Break 2",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: primary))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: SizedBox(
                // color: Colors.amberAccent,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text("No Orders",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                    Container(
                      // height: ,
                      width: 1,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 80,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              // color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset('assets/images/logout.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("End Shift",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("9:30 PM",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: primary))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      content: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "AMOUNT TO BE PAID",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "\$300",
                              style: TextStyle(
                                  color: primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Please handover the amount\n earned.",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PhoneNumber()),
                                );
                              },
                              child: Container(
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: primary,
                                  border: Border.all(color: Colors.black12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "END SHIFT",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );

                    // Write Click Listener Code Here.
                  },
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
                // padding: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.all(14.0),
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
        ),
      ),
    );
  }
}
