
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class WorldTime {

  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location,this.flag,this.url});

  Future<void> getData() async{
    print("getData");
    Response response = await get("http://worldtimeapi.org/api/timezone/$url");
    Map data =jsonDecode(response.body);
    String dataTime = data['datetime'];
    String offSet = data['utc_offset'].substring(1,3);
    print(dataTime);
    print(offSet);
    // create date time
    DateTime now = DateTime.parse(dataTime);
    now.add(Duration(hours: int.parse(offSet)));
    time = now.toString();
    print(now);
  }


}