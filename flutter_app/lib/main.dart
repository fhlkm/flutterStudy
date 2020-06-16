
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
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Online Lesson "),
        centerTitle: true,
        backgroundColor: Colors.grey[850],

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0,40.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,// alignment
          children: <Widget>[
            Center(//Widget  to make it center
              child: CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text("Name", style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),// margin between two text
            Text("Hanlu Feng",style: TextStyle(
              color: Colors.amberAccent[200],
            fontWeight: FontWeight.bold,
            fontSize: 29.0,
            )
            ),
            SizedBox(height: 30.0),
            Text("Company", style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),// margin between two text
            Text("Samsung",style: TextStyle(
              color: Colors.amberAccent[200],
              fontWeight: FontWeight.bold,
              fontSize: 29.0,
            )
            ),
            SizedBox(height: 30.0),
            Text("Position", style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),// margin between two text
            Text("Android Engineer",style: TextStyle(
              color: Colors.amberAccent[200],
              fontWeight: FontWeight.bold,
              fontSize: 29.0,
            )
            ),
            SizedBox(height: 30.0,),
            Row(
              children:<Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text("fenghanlu@gmail.com",style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0
                ),)
              ],
            )

          ],
        ),
      ),
    );
  }

}

