import 'package:flutter/material.dart';


//stack 相当于android Frame layout
void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home:PositionWidget(),
    ),
  );
}



class PositionWidget extends StatefulWidget {
  @override
  PositionState createState() => PositionState();
}

class PositionState extends State<PositionWidget>{
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
//        fit: StackFit.expand,//未定位widget占满Stack整个空间
        children: <Widget>[
          Container(child: Text("Hello world",style: TextStyle(color: Colors.white,fontSize: 12)),
            color: Colors.red,
          ),
          Positioned(
            left: 18.0,
            child: Text("I am Jack",style: TextStyle(fontSize: 12)),
          ),
          Positioned(
            top: 100.0,
            child: Text("Your friend",style: TextStyle(fontSize: 12),),
          )
        ],
      ),
    );
  }

}