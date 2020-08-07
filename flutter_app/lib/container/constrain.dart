import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home:ConstraintWidget(),
    ),
  );
}


class ConstraintWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConstraintState();
  }

}

//多重限制，当父级与子级产生矛盾时，ConstrainedBox 按照长度最大值为装
//多重限制，当父级与子级产生矛盾时，UnConstrainedBox 子级的大小按照自己为装但不会超过父的大小
class ConstraintState extends State<ConstraintWidget>{
  Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
          child: SizedBox(
              width: 80.0,
              height: 80.0,
              child: redBox
          ),
        )
    );
  }

}