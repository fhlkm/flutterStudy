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
    Response response = await get("https://jsonplaceholder.typicode.com/todos/1");
    Map data =jsonDecode(response.body);
    print('Data is : '+data['title']);
   
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

