import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_18(),
  debugShowCheckedModeBanner: false,
));

class lec_18 extends StatelessWidget {
  const lec_18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell",style: TextStyle(fontSize: 30.0),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[200],
        width: double.infinity,
        height: double.infinity,
        child: mainContent(),
        
      ),
    );
  }
}
class mainContent extends StatefulWidget {
  const mainContent({Key? key}) : super(key: key);

  @override
  _mainContentState createState() => _mainContentState();
}

class _mainContentState extends State<mainContent> {
  String dragDirection="";
  String xPosition="";
  String yPosition="";
  void _onVerticalDragStartHandler(DragStartDetails details)
  {
    setState(() {
      dragDirection="Vertical!";
      xPosition=details.globalPosition.dx.floorToDouble().toString();
      yPosition=details.globalPosition.dy.floorToDouble().toString();
    });

  }

  void _onHorizontalDragStartHandler(DragStartDetails details)
  {
    setState(() {
      dragDirection="Horizontal!";
      xPosition=details.globalPosition.dx.floorToDouble().toString();
      yPosition=details.globalPosition.dy.floorToDouble().toString();
    });
  }

  void _onDragUpdateHandler(DragUpdateDetails details)
  {
    setState(() {
      dragDirection="Update!";
      xPosition=details.globalPosition.dx.floorToDouble().toString();
      yPosition=details.globalPosition.dy.floorToDouble().toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("On tap");
      },
      onDoubleTap: (){
        print("On Double tap");
      },
      dragStartBehavior: DragStartBehavior.start,
      behavior: HitTestBehavior.translucent,
      onVerticalDragStart: _onVerticalDragStartHandler,
      onHorizontalDragStart: _onHorizontalDragStartHandler,
      onHorizontalDragUpdate: _onDragUpdateHandler,
      onVerticalDragUpdate: _onDragUpdateHandler,
      child: Container(
        child:Column(
          children: [
            Text(dragDirection),
            Text(xPosition),
            Text(yPosition),
          ],
        )
      ),
    );
  }
}

