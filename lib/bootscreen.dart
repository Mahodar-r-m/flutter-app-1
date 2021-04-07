import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/welcomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Boot extends StatefulWidget {
  @override
  _BootState createState() => _BootState();
}

class _BootState extends State<Boot> {
  String _versionName = 'V1.0';
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => WelcomePage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            colors: [
              Color(0xfffbb448),
              Color(0xffe46b10),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'Dia',
              style: GoogleFonts.charm(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFFFFF),
              ),
              children: [
                TextSpan(
                  text: 'f',
                  style: TextStyle(color: Color(0xff5b5025), fontSize: 40),
                ),
                TextSpan(
                  text: 'its',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ]),
        ),
        // Text(
        //   'Diafites',
        //   style: TextStyle(
        //     fontWeight: FontWeight.w900,
        //     color: Color(0xFF5b5025),
        //     fontFamily: 'BodoniModa',
        //     fontSize: 35,
        //   ),
        // ),
      ),
    );
  }
}
