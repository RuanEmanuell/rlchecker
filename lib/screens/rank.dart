import 'package:flutter/material.dart';
import 'dart:convert';

import "home.dart";


class RankScreen extends StatelessWidget {

  var json= jsonDecode(
      """{"ranks":[{"division":4,"played":0,"rank":"Platinum II","playlist":"Duel (Ranked)","mmr":746,"streak":1},{"division":1,"played":194,"rank":"Diamond III","playlist":"Doubles (Ranked)","mmr":990,"streak":-1},{"division":1,"played":36,"rank":"Diamond III","playlist":"Standard (Ranked)","mmr":999,"streak":4},{"division":2,"played":19,"rank":"Diamond II","playlist":"Hoops","mmr":839,"streak":1},{"division":1,"played":37,"rank":"Champion I","playlist":"Rumble","mmr":998,"streak":-1},{"division":1,"played":20,"rank":"Platinum III","playlist":"Dropshot","mmr":689,"streak":-2},{"division":4,"played":0,"rank":"Gold I","playlist":"Snow Day","mmr":529,"streak":-1}],"reward":{"progress":0,"level":"Champion"}}""");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:[
            Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Text(data.player),
                          Text("ID: ${data.player}", style:TextStyle(
                            color:Colors.white
                          )),   
                        Text("Reward Level: ${json["reward"]["level"]}", style:TextStyle(
                          color:Colors.white
                        )),
                        Container(
                          width:100,
                          height:100,
                          child: Image.asset("assets/images/${(json["reward"]["level"])}.png")),
                    SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount:json["ranks"].length-1,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Text(json["ranks"][index]["playlist"], style:TextStyle(
                                color:Colors.white
                              )),
                              SizedBox(
                                  width: 200,
                                  height: 200,
                                  child: Image.asset(
                                      "assets/images/${(json["ranks"][index]["rank"]).substring(0, json["ranks"][0]["rank"].indexOf(" ")).trim()}.png")),
                          Text(json["ranks"][index]["rank"], style: const TextStyle(color: Colors.white)),           
                            ],
                          );
                          }
                        
                      ),
                    ),
                  ],
                )
            
          
            ),
          ]
        ),
      )
    );
  }
}
