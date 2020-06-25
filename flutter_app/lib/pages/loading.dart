import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
    print("getData");
    Response response = await get("http://worldtimeapi.org/api/timezone/Asia/Shanghai");
    Map data =jsonDecode(response.body);
    String dataTime = data['datetime'];
    String offSet = data['utc_offset'].substring(1,3);
    print(dataTime);
    print(offSet);
   // create date time
    DateTime now = DateTime.parse(dataTime);
    now.add(Duration(hours: int.parse(offSet)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    print("init");
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("loading screen")),
    );
  }
}

