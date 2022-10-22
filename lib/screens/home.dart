import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import "loading.dart";

class HomeScreen extends StatelessWidget {
  TextEditingController textController = TextEditingController();

  var url = Uri.parse("https://www.epicgames.com/account/personal?lang=en&productName=epicgames");

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: screenHeight,
                width: screenWidth,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover, opacity: 0.1, image: AssetImage("assets/images/rocket.jpg")),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [const Color.fromARGB(255, 61, 159, 240), Colors.blue.shade900])),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: screenHeight / 15, left: screenWidth / 20, right: screenWidth / 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: screenWidth / 100),
                            child: Text("ROCKET LEAGUE CHECKER",
                                style: GoogleFonts.hind(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: screenWidth / 16))),
                        Container(
                            margin: EdgeInsets.only(bottom: screenHeight / 100),
                            width: screenWidth / 10,
                            height: screenWidth / 2,
                            child: Image.asset("assets/images/logo.png")),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenHeight / 20, left: screenWidth / 15, right: screenWidth / 15),
                    child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                            hintText: "Enter Epic Games ID",
                            hintStyle: GoogleFonts.hind(
                                fontWeight: FontWeight.bold, color: const Color.fromARGB(167, 255, 255, 255)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 3)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2))),
                        style: GoogleFonts.hind(fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight / 45, bottom: screenHeight / 8),
                    child: TextButton(
                        onPressed: () {
                          launchUrl(url);
                        },
                        child: Text("Check your Epic ID",
                            style: GoogleFonts.hind(fontWeight: FontWeight.bold, color: Colors.white))),
                  ),
                  SizedBox(
                    width: screenWidth / 1.75,
                    height: screenHeight / 9,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {
                          if(textController.text.length==32){
                          data.player = textController.text;
                          data.requestData();
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return LoadingScreen();
                            },
                          ));
                          }
                        },
                        child: Text("SEARCH",
                            style: GoogleFonts.hind(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth / 12,
                                color: Colors.blue))),
                  )
                ]))));
  }
}
