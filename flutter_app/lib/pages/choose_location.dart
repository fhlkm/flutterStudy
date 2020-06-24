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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
