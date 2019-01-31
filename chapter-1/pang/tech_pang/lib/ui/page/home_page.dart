import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_pang/model/menu.dart';

class HomePage extends StatelessWidget {
  final _scaffoldState = GlobalKey<ScaffoldState>();
  Size deviceSize;
  BuildContext _context;



  //stack 1/3
  Widget menuImage(Menu menu) => Image.asset(
    menu.image,
    fit: BoxFit.cover,
  );

  //stack 2/3
  Widget menuColor() => new Container(
    decoration: BoxDecoration(boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black.withOpacity(0.8),
        blurRadius: 5.0,
      ),
    ]),
  );



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}