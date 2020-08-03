import 'package:flutter/material.dart';
import 'package:flutterapp/services/world_time.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//线性布局：
// 内部children占满屏幕与没有占满屏幕 两种情况

class Linear extends StatefulWidget {
  @override
  LinearState createState() => LinearState();
}

class LinearState extends State<Linear> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕

          children: <Widget>[
            // 没有占满屏幕
//            Container(
//              color: Colors.red,
//              child: Column(
//                mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度
//                children: <Widget>[
//                  Text("hello world "),
//                  Text("I am Jack "),
//                ],
//              ),
//            )

            // 占满屏幕
            Expanded(
              child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              ),
            )

          ],


        ),
      ),
    );
  }

}
