import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TERMPAGE extends StatefulWidget {
  @override
  _TERMPAGEState createState() => _TERMPAGEState();
}

class _TERMPAGEState extends State<TERMPAGE> {
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
        title: Text('TERMS AND CONDITIONS',
            style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
      ),
      body:  const Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
          maxLines: 20,
          style: TextStyle(fontSize: 18.0, color: Colors.black38),
        ),
      ),
    );
  }
}
