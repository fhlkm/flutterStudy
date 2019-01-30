import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Text Widget' ,
        home: Scaffold(
//      body: Center(
          /***********************child is Text*****************************/
//        child: Text(
//            'Hello JSPang *&********************************************',
//          textAlign: TextAlign.center,
//          overflow: TextOverflow.ellipsis,
//          maxLines: 1,
//          style: TextStyle(
//            fontSize: 25.0,
//            color: Color.fromARGB(255, 255, 150, 150),
//            decoration: TextDecoration.underline,
//            decorationStyle: TextDecorationStyle.solid,
//          ),
//        ),
//        /***********************child is Container*****************************/
//      child: Container(
//        child:new Text('Hello JSPang',style: TextStyle(fontSize: 40.0),),
//        alignment: Alignment.center,
//        width: 500.0,
//        height: 400.0,
//        padding:  EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
//        margin: const EdgeInsets.all(10.0),
//        decoration:new BoxDecoration(
//            gradient:const LinearGradient(
//                colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple]
//            ),
//          border: Border.all(width: 2.0,color: Colors.red)
//        ),
//      ),

//      /*******************Image***********************/
//        child: Container(
//          child: new Image.network(
//            'http://jspang.com/static/myimg/blogtouxiang.jpg',
//            scale: 1.0,
//            fit:BoxFit.cover,
//            repeat: ImageRepeat.repeatY,
//          ),
//          width: 300.0,
//          height: 200.0,
//          color: Colors.lightBlue,
//
//        ),

//      ),
//          /*******************ListView***********************/
//            appBar: new AppBar(
//              title: new Text('ListView Widget'),
//            ),
//            body: new ListView(
//              children: <Widget>[
//                new ListTile(
//                  leading: new Icon(Icons.access_time),
//                  title: new Text('access_time'),
//                ),
//                new ListTile(
//                  leading: new Icon(Icons.account_balance),
//                  title: new Text('account balance'),
//                ),
//
//                new Image.network(
//                    'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'
//                ),
//                new ListTile(
//                  leading: new Icon(Icons.access_time),
//                  title: new Text('access_time'),
//                ),
//                new Image.network(
//                    'http://jspang.com/static/myimg/smile-vue.jpg'
//                ),
//              ],
//            )

//          /*******************Scroll Decoration***********************/
//          body: Center(
//            child: Container(
//              height: 200,
//              child: new ListView(
//                scrollDirection: Axis.horizontal,
//                shrinkWrap: true,
//                children: <Widget>[
//                  new Container(
//                    width: 180.0,
//                    color: Colors.lightBlue,
//                  ),
//
//                  new Container(
//                    width: 180.0,
//                    color: Colors.amber,
//                  ),
//                  new Container(
//                    width:180.0,
//                    color: Colors.deepPurpleAccent,
//                  ),
//                ],
//              ),
//            ),
//          ),


///*******************create custom class*******************************/
//          body: Center(
//            child: Container(
//              height: 200,
//              child: MyList(),
//            ),
//          ),

        )
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return  new ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),

        new Container(
          width: 180.0,
          color: Colors.amber,
        ),
        new Container(
          width:180.0,
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }

}
