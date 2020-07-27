import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _incrementCounter,
          child: Text('Increment Counter'),
        ),
      ),
    ),
  ));
}



_incrementCounter()async{
  //future 是事件队列
  Future(()=> print('task'))
      .then((_)=> print('callback1'))
      .then((_)=> print('callback2'));

  SharedPreferences prefs = await SharedPreferences.getInstance();
  int counter = (prefs.getInt('counter')??0)+1;
  print('Pressed $counter tiems');
  await prefs.setInt('counter', counter);

}

