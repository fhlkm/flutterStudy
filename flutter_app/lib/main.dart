
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
  int level=1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Online Lesson "),
        centerTitle: true,
        backgroundColor: Colors.grey[850],

      ),
      floatingActionButton:FloatingActionButton(onPressed: (){
//        level++;
        setState(() {
          level++;
        });
      },
      backgroundColor: Colors.grey[800],
      child: Icon(Icons.add),) ,

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
            Text("Level", style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),// margin between two text
            Text("$level",style: TextStyle(
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



