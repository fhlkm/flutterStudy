import 'package:flutter/material.dart';
void main () => runApp(_MyApp());
class _MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Layout',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Horizontal Layout'),
        ),

        body: new Row(
          children: <Widget>[
//            new RaisedButton(onPressed: (){
//
//            },
//              color: Colors.redAccent,
//              child: new Text('Red button'),
//            ),
//
//            new RaisedButton(onPressed: (){
//
//            },
//              color: Colors.deepOrangeAccent,
//              child: new Text('Orange button'),
//            ),
//
//            new RaisedButton(onPressed: (){
//
//            },
//              color: Colors.pinkAccent,
//              child: new Text('Pink button'),
//            ),
//            Expanded(child:new RaisedButton(
//                onPressed: (){
//                },
//                color:Colors.redAccent,
//                child:new Text('红色按钮')
//            )),
//
//            Expanded(child:new RaisedButton(
//                onPressed: (){
//                },
//                color:Colors.orangeAccent,
//                child:new Text('黄色按钮')
//            )),
            new RaisedButton(
                onPressed: (){
                },
                color:Colors.redAccent,
                child:new Text('红色按钮')
            ),
            Expanded(child:new RaisedButton(
              onPressed: (){
              },
              color:Colors.orangeAccent,
              child: new Text('黄色按钮'),
            )
            ),
            new RaisedButton(
                onPressed: (){
                },
                color:Colors.pinkAccent,
                child:new Text('粉色按钮')
            )


          ],
        ),
      ),
    );

  }
  
}