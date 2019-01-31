import 'package:flutter/material.dart';
void main () => runApp(_MyApp());

class _MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    var stack = new Stack(
      alignment: const FractionalOffset(0.0,0.0),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('http://jspang.com/static//myimg/blogtouxiang.jpg'),
          radius: 100.0,
        ),
        
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue
          ),
          
          padding: EdgeInsets.all(5.0),
          child: new Text('JSPang'),
        ),
        new Positioned(
          bottom:10.0,
          right:10.0,
          child: new Text('技术胖'),
        )

      ],
      
    );
    return MaterialApp(
      title: 'StackView Widget',

      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Stack layout'),
        ),
        body: Center(child: stack),
      ),
    );
  }

}