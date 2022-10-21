import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  var json = jsonDecode(
      """{"ranks":[{"division":4,"played":0,"rank":"Platinum II","playlist":"Duel (Ranked)","mmr":746,"streak":1},{"division":1,"played":194,"rank":"Diamond III","playlist":"Doubles (Ranked)","mmr":990,"streak":-1},{"division":1,"played":36,"rank":"Diamond III","playlist":"Standard (Ranked)","mmr":999,"streak":4},{"division":2,"played":19,"rank":"Diamond II","playlist":"Hoops","mmr":839,"streak":1},{"division":1,"played":37,"rank":"Champion I","playlist":"Rumble","mmr":998,"streak":-1},{"division":1,"played":20,"rank":"Platinum III","playlist":"Dropshot","mmr":689,"streak":-2},{"division":4,"played":0,"rank":"Gold I","playlist":"Snow Day","mmr":529,"streak":-1}],"reward":{"progress":0,"level":"Champion"}}""");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        for (var i = 0; i < json["ranks"][i].length; i++)
          Container(
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                        "assets/images/${(json["ranks"][i]["rank"]).substring(0, json["ranks"][0]["rank"].indexOf(" ")).trim()}.png")),
                Text(json["ranks"][i]["rank"], style: const TextStyle(color: Colors.white))
              ],
            ),
          )
      ]),
    );
  }
}
