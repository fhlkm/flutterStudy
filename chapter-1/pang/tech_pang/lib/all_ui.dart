
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_pang/di/dependency_injection.dart';
import 'package:tech_pang/utils/uidata.dart';

void main(){
  Injector.configure(Flavor.MOCK);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final materialApp = MaterialApp(
      title: UIData.appName,
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: UIData.quickFont,
          primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,


    );
    // TODO: implement build
    return null;
  }

}