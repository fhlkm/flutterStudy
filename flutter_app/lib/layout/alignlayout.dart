import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home:AlignWidget(),
    ),
  );
}



class AlignWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AlignState();
  }

}

class AlignState extends State<AlignWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 10.0,

      color: Colors.red,
      child: Align(
        widthFactor: 1,
        heightFactor: 1,
        alignment: Alignment.topRight,//确定了相当于父的原点
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }

}