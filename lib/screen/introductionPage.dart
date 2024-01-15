import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geralds_shabran_motionintern_week_1/screen/homePage.dart';

class IntroDuctionPage extends StatefulWidget {
  const IntroDuctionPage({Key? key}) : super(key: key);

  @override
  _IntroDuctionPageState createState() => _IntroDuctionPageState();
}

class _IntroDuctionPageState extends State<IntroDuctionPage> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  void _navigateAfterDelay() {
    const delay =
        Duration(seconds: 5); // ada delay 5 detik dari introduction ke homepage
    Timer(
      delay,
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFFFD),
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'images/logo.png',
            scale: 1.2,
          ),
        ),
      ),
    );
  }
}
