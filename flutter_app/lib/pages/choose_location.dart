import 'package:flutter/material.dart';
import 'package:flutterapp/services/world_time.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}
//有状态Widget可以根据setState转变生命周期
// init(only once)->build (setState)构建widget->Dispose()
//
class _ChooseLocationState extends State<ChooseLocation> {

  int counter =0;
  List<WorldTime>  locations = [
    WorldTime(url: "Asia/Shanghai",location: "Beijing",flag:"china.png"),
    WorldTime(url: "Europe/London",location: "London",flag:"uk.png")
  ];
  //async & await to block thread in current block

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    print("build function run");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Select a country"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
          child: Card(
            child: ListTile(
              onTap:(){
                print(locations[index].location);

              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/${locations[index].flag}'),
              ),

            ),
          ),
        );
      },
      itemCount: locations.length,
      )
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose function run");
  }
}
