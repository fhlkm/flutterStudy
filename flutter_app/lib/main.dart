
import 'package:flutter/material.dart';

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
  List<String> datas= [
    "Hello World",
    "Hello Flutter",
    "Hello Mr."
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
        children: datas.map((e) => Text(e)).toList()
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



