import 'package:flutter/material.dart';

//void main() => runApp(MyApp2(
////  items: new List<String>.generate(1000, (i)=>"Item $i"),
//    items: new List<String>.generate(1000, (i)=> "Item $i")
//));


void main () => runApp(MyApp2(
    items: new List<String>.generate(1000, (i)=> "Item $i")
));


class MyApp2 extends StatelessWidget {
  final List<String> items ;

  MyApp2({Key key, @required this.items}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'ListView Widget',
      home: Scaffold(
        body: new ListView.builder(
           itemCount: items.length,
          itemBuilder: (context,index){
             return new ListTile(
               title: new Text('${items[index]}'),
             );
          },
        ),
      ),
    );
  }




}
