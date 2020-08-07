import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home:TransformWidget(),
    ),
  );
}


class TransformWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransformState();
  }

}


//Transform的变换是应用在绘制阶段，而并不是应用在布局(layout)阶段，所以无论对子组件应用何种变化，
// 其占用空间的大小和在屏幕上的位置都是固定不变的，因为这些是在布局阶段就确定的


//RotatedBox和Transform.rotate功能相似，它们都可以对子组件进行旋转变换，但是有一点不同：
// RotatedBox的变换是在layout阶段，会影响在子组件的位置和大小。

class TransformState extends State<TransformWidget>{
  @override
  Widget build(BuildContext context) {
    throw DecoratedBox(
      decoration:BoxDecoration(color: Colors.red),
      //默认原点为左上角，左移20像素，向上平移5像素
      child: Transform.translate(
        offset: Offset(-20.0, -5.0),
        child: Text("Hello world"),
      ),
    );
  }
  
}