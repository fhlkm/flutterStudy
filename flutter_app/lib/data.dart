import 'package:flutter/material.dart';
class Datas{
  String text;
  String author;
  Datas({this.text,this.author});
}


class DataCard extends StatelessWidget {

  final Function delete;
  final Datas data;
  DataCard({this.data,this.delete});
  @override
  Widget build(BuildContext context) {
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

            SizedBox(height:8.0),
            FlatButton.icon(onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text("Delete"))
          ],
        ),
      ),
    );
  }
}