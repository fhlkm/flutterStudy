
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(home: ProfileHome()));
}


class ProfileHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Online Lession2"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),
                radius: 40.0,
              ),

            ),

            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),

            Row(
              children: <Widget>[
                Text("name",
                  style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0),

                ),
                SizedBox(height: 10.0,),
                Text("Hanlu",style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 29.0
                ),)
              ],
            )

          ],
        ),
      ),
    );
  }

}