
import 'package:flutter/material.dart';

void main() {
//  runApp(MyApp());
  runApp(MaterialApp(
//  home: Text("Hanlu"),
//Scaffold like an container
    home: Home(),

  ));
}

class Datas{
  String text;
  String author;
  Datas({this.text,this.author});
}

//Stateless:image
// 有状态： checkbox
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var myData = Datas(text:"Hello word",author: "Mr Feng");
  List<Datas> datas= [
    Datas(text:"Hello word",author: "Mr Feng")
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Online Lesson "),
        centerTitle: true,
        backgroundColor: Colors.grey[850],

      ),


      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,//alignment

        children: datas.map((e) => Text('${e.author}:${e.text}')).toList()
      ),
    );
  }
}

//some state
class Homee extends StatefulWidget {
  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  int level=0;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



