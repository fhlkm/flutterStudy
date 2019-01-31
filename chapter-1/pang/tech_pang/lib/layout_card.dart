import 'package:flutter/material.dart';
void main () => runApp(_MyApp());

class _MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title:new Text('吉林省吉林市昌邑区',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('SJPang'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          ),
          ListTile(
            title:new Text('吉林省吉林市昌邑区2',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('SJPang2'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          )
        ],
      ),
    );
    return MaterialApp(
      title: 'Card Layout',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Card'),

        ),
        body: Center(child: card,),
      ),
    );
  }

}