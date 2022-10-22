import 'package:flutter/material.dart';

import "../controller/controller.dart";
import "rank.dart";

var data = Controller();

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreen createState() => _LoadingScreen();
}

class _LoadingScreen extends State<LoadingScreen> {
  bool big = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        big = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1300), () {
      setState(() {
        big = false;
      });
    });
    Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return RankScreen();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: AnimatedContainer(
              width: big ? screenWidth / 2 : screenWidth / 3,
              height: big ? screenHeight / 3 : screenHeight / 5,
              duration: const Duration(seconds: 1),
              decoration:
                  BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(screenWidth)),
              child: Image.asset("assets/images/octane.png"))),
    );
  }
}
