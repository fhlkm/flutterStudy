import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}
//有状态Widget可以根据setState转变生命周期
// init(only once)->build (setState)构建widget->Dispose()
//
class _ChooseLocationState extends State<ChooseLocation> {

  int counter =0;
  //async & await to block thread
    getData() async{
   String time1 = await Future.delayed(Duration(seconds: 3),(){
     print("print after 3 seonds");
     return "3 seconds";
   });

   String time2 = await Future.delayed(Duration(seconds: 3),(){
     print("print after 3 seonds");
     return "3 seconds";
   });

   print("two wait time is $time1 and $time2");
   return time1+time2;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String data = getData();
    print("run after getData immediately without blocking");
    print("initState function run");
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
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: Text("counter is $counter"),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose function run");
  }
}
