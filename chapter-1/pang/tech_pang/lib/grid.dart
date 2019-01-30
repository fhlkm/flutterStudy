import 'package:flutter/material.dart';

void main ()=> runApp(_MyApp());

class _MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'GridView Widget',
      home: Scaffold(
        body: GridView.count(
          padding: const EdgeInsets.all(1),
          crossAxisSpacing: 0.1,
          crossAxisCount: 3,
          children: <Widget>[
            const Text('I am JSPang'),
            const Text('I love web'),
            const Text('jspang.com'),
            const Text('I love game'),

          ],

        )
      )
    );
    return null;
  }

}