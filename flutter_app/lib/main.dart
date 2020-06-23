import 'package:flutter/material.dart';
import 'package:flutterapp/pages/loading.dart';
import 'pages/home.dart';
import 'pages/choose_location.dart';


void main() {
//  runApp(MyApp());
  runApp(MaterialApp(
//  home: Text("Hanlu"),
//Scaffold like an container
//    home: Home(),

    initialRoute: "/home",
    routes: {
      "/":(context)=>Loading(),
      "/home":(context)=>Home(),
      "/location":(context)=>ChooseLocation()
    },

  ));
}





