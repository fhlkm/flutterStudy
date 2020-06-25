import 'package:flutter/material.dart';
import 'package:flutterapp/services/world_time.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time ="loading";
  void setupWorldTime() async{


    WorldTime instance = WorldTime(location: "Beijing",flag:"China.png",url: "Asia/Shanghai" );
    await instance.getData();
    print(instance.time);
    setState(() {
      time= instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    print("init");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("loading screen $time")),
    );
  }
}

