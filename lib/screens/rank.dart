import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';

import "loading.dart";
import "home.dart";

class RankScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: ListView(children: [
        Stack(
          children:[
            Column(
            children: [
              Container(
                margin:const EdgeInsets.only(top:50, bottom:50),
                child: Text("ID: ${data.player}",
                    style: GoogleFonts.hind(
                        fontWeight: FontWeight.bold, fontSize: screenWidth / 30, color: Colors.white)),
              ),
              Container(
                width:screenWidth/2,
                margin:const EdgeInsets.only(bottom: 50),
                decoration:BoxDecoration(
                  gradient:const LinearGradient(
                    begin:Alignment.centerLeft,
                    end:Alignment.centerRight,
                    colors:[Colors.purple, Colors.blue],
                  ),
                  borderRadius:BorderRadius.circular(screenWidth/50)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin:const EdgeInsets.only(bottom:10),
                        width: screenWidth / 5,
                        height: screenHeight / 10,
                        child: Image.asset("assets/images/${(data.json["reward"]["level"])}.png")),
                    Column(
                      children: [
                        Text("Reward Level",
                            style: GoogleFonts.hind(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth / 30,
                                color: Colors.white)),
                        Text(data.json["reward"]["level"],
                            style: GoogleFonts.hind(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth / 20,
                                color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: data.json["ranks"].length-1,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset(
                                    "assets/images/${(data.json["ranks"][index]["rank"]).substring(0, data.json["ranks"][0]["rank"].indexOf(" ")).trim()}.png")),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(data.json["ranks"][index]["playlist"], style: GoogleFonts.hind(
                                  fontWeight:FontWeight.bold,
                                  fontSize:screenWidth/27,
                                  color: const Color.fromARGB(255, 85, 173, 255))),
                                Text(data.json["ranks"][index]["rank"], style: GoogleFonts.hind(
                                  fontWeight:FontWeight.bold,
                                  color: Colors.white)),   
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("MMR: ${data.json["ranks"][index]["mmr"]}", style: GoogleFonts.hind(
                                  fontWeight:FontWeight.bold,
                                  color: Colors.white)),
                                Text("Streak: ${data.json["ranks"][index]["streak"]}", style: GoogleFonts.hind(
                                  fontWeight:FontWeight.bold,      
                                  color: data.json["ranks"][index]["streak"]>0? Colors.green:Colors.red)),   
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
          IconButton(
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) {
                    return HomeScreen();
                  },
                )
              );
            },
            icon:Icon(Icons.arrow_back, size:screenWidth/7, color:Colors.white),
          )
          ]
        ),
      ]),
    ));
  }
}
