import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dispute extends StatefulWidget {
  const Dispute({Key? key}) : super(key: key);

  @override
  State<Dispute> createState() => _DisputeState();
}

class _DisputeState extends State<Dispute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          shape: const Border(
            bottom: BorderSide(color: Color(0xffF4F4F4), width: 1.5),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          // automaticallyImplyLeading: false,
          title: Text('DISPUTE',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
        body: Container(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Items delayed from restaurant ",
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/arrow.png",
                          width: 20,
                          // fit: BoxFit.fitWidth,
                        ),
                      ]),
                ]),
          ),
          const Divider(
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Items delayed of packing",
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/arrow.png",
                          width: 20,
                          // fit: BoxFit.fitWidth,
                        ),
                      ]),
                ]),
          ),
          const Divider(
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Items updation late ",
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/arrow.png",
                          width: 20,
                          // fit: BoxFit.fitWidth,
                        ),
                      ]),
                ]),
          ),
          const Divider(
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Others",
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/arrow.png",
                          width: 20,
                          // fit: BoxFit.fitWidth,
                        ),
                      ]),
                ]),
          ),
          const Divider(
            color: Colors.black26,
          ),
        ])));
  }
}
