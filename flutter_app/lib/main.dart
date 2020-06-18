
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
    Datas(text:"Hello word",author: "Mr Feng"),
    Datas(text:"Hello word",author: "World")
  ];

  Widget dataTemplate(data){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text(
          data.text,
        style: TextStyle(
        fontSize: 18.0,
          color: Colors.grey[600],
        ),
      ),
      SizedBox(height: 6.0,),
      Text(
        data.author,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.grey[600],
        ),
      ),
      ],
    ),
    ),
    );
  }
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

          children: datas.map((data) => dataTemplate(data)).toList()
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



