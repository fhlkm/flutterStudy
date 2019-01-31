import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: 'Navigator',
      home: new FirstScreen()
  ));
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold(
      appBar: AppBar(title: Text('Navigator Page'),),

      body: Center(
        child: RaisedButton(
          child: Text('Go to Detail Page'),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>new SecondScreen(),
            ));
          },
        ),
      ),
    );

  }

}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(title: Text('Detail Page'),),
      body: Center(
        child: RaisedButton(
          child: Text('Return'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

    );

  }

}

