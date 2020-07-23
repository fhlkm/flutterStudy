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

    initialRoute: "/",
    routes: {
      "/":(context)=>Loading(),
      "/home":(context)=>Home(),
      "/location":(context)=>ChooseLocation()
    },

  ));
}




List<int>_t1 = List<int>();
justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

test2() async {
  await justWait(numberOfSeconds: 3);
  _t1.clear();
  print("t2: clear");
}

test1() async {
  for (var k in _t1) {
    print("t1: $k");
    await justWait(numberOfSeconds: 1);
  }
  print("t1: clear");
  _t1.clear();
}

//Flutter event queue with http &I/0?
/****************Async has problem*************************/
//test() {
//  print('=============================>');
//  for (var i = 0; i < 10; i++ ) {
//    _t1.add(i);
//  }
//  test1();
//  test2();
//  Future.delayed(Duration(seconds: 15), ()=> print(_t1));
//}
/****************Async fix problem*************************/
//test() async {
//  print('=============================>');
//  for (var i = 0; i < 10; i++ ) {
//    _t1.add(i);
//  }
//   await test1();
//   test2();
//  Future.delayed(Duration(seconds: 15), ()=> print(_t1));
//}
