import 'package:flutter/material.dart';
import 'package:flutterapp/data.dart';

void main() {
//  runApp(MyApp());
  runApp(MaterialApp(
//  home: Text("Hanlu"),
//Scaffold like an container
    home: Home(),

  ));
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
    Datas(text:"Hello word",author: "Mr Feng"),
    Datas(text:"Hello word",author: "World")
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

          children: datas.map((data) => DataCard(data)).toList()
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



