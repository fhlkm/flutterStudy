import 'package:flutter/material.dart';
void main () => runApp(_MyApp());

class _MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Vertical Layout"),
        ),

        body: Column(
          children: <Widget>[
            Center(child:Text('I am JSPang')),
            Expanded(child:Center(child:Text('my website is jspang.com'))),
            Center(child:Text('I love coding'))

          ],
        ),

      ),
    );
  }

}