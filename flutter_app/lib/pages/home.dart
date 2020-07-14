import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    //get Parameter from previous screen
    //ModalRoute.of(context).settings.arguments only get data from (pushNamed() in loading screen), can't get data from pop

    data = data.isNotEmpty ?data: ModalRoute.of(context).settings.arguments;
    print(data);
    //set background image
    String bgImage = data['isDaytime']?'day.png':'night.png';

    Color bgColor = data['isDaytime']?Colors.blue:Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor,// title bar background
      body:SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/$bgImage"),  fit: BoxFit.cover),

          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, "/location");
                  if(result != null ){
                    setState(() {// set State was triggered, build will run again
                      data = {
                        'location':result['location'],// result is a map
                        'flag':result['location'],
                        'time':result['time'],
                        'isDaytime':result['isDaytime']
                      };
                    });
                  }
                },
                    icon: Icon(Icons.edit_location,
                    color: Colors.blue,),
                    label: Text("Edit Location",
                    style: TextStyle(
                      color:Colors.blue,

                    ),)),

                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text(
                      data['location'],
                      style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text(
                      data['time'],
                      style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0
                      ),
                    ),
                  ],
                )


              ],

            ),
          ),
        ),
      ),
    );
  }
}
