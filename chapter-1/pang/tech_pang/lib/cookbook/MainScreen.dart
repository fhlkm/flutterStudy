import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title:'页面跳转返回数据',
      home:MainScreen()
  ));
}



class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),

      body: GestureDetector(
        onTap: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
        },
        child: Hero(
          tag: 'ImageHero',
          child:   Image.network(
          'https://picsum.photos/250?image=9',
           ),
        ),

      ),
    );
  }


}


class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GestureDetector(
        onTap: (){
        Navigator.pop(context);
        },
        child: Hero(
            tag: 'ImageHero',
            child: Center(
              child: Image.network('https://picsum.photos/250?image=9',),
            ),
        ),
      ),
    );
  }

}