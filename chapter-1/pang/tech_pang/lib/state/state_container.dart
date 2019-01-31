import 'package:flutter/material.dart';

void main() => runApp(new _MyApp());

class _MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }

}

class _MyAppState extends State<_MyApp>{


  Color initColor = Colors.white;
  Color dependencyDidUpdateColor = Colors.white;


  @override
  Widget build(BuildContext context) {

    return  new MaterialApp(
      title: 'Lifecycle Hooks',


      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new Scaffold(
        appBar: new AppBar(title: new Text('This is a test')),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                width: 300.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Mounted(title: 'Mounted',color: Colors.white,),
                    new Mounted(title: 'Unmounted',color: Colors.white,)
                  ],
                ),
              ),
              LifecycleHook(title: 'one',color: Colors.white),
              LifecycleHook(title: 'two',color: Colors.white),
              LifecycleHook(title: 'three',color: Colors.white),
              LifecycleHook(title: 'five',color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

}


class Mounted extends StatelessWidget{

  String title;
  Color color;

  Mounted({Key key, this.title, this.color}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return  new Container(
      alignment: Alignment.center,
      child: new Text(
        title,
        style: Theme.of(context).textTheme.title,
        textAlign: TextAlign.center,
      ),
      width:  140.0,
      height: 50.0,
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      decoration: new BoxDecoration(
          color: color,
          border: new Border.all(color: Colors.black,width: 1.0),
          borderRadius: new BorderRadius.circular(5.0)
      ),
    );
  }

}

class LifecycleHook extends StatelessWidget{
  final String title;
  final Color color;
  LifecycleHook({Key key, this.title,this.color }): super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      child: new Text(
        title,
        style: Theme.of(context).textTheme.title,
        textAlign: TextAlign.center,
      ),
      width: 300.0,
      height: 50.0,
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      decoration: new BoxDecoration(
        color: color,
        border: new Border.all(color: Colors.black, width: 1.0),
        borderRadius: new BorderRadius.circular(5.0),
      ),
    );
  }

}