import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Container(

        color: Colors.black,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex:30,

                child: FlatButton(
                onPressed: () {},
                child: Text("Button 1"),
                color: Color(0xffff0f0f))),
            Expanded(
                flex:40,
                child: FlatButton(
                    onPressed: () {},
                    child: Text("Button 2"),
                    color: Color(0xffff0f0f))),
            Expanded(
                flex:30,
                child: FlatButton(
                    onPressed: () {},
                    child: Text("Button 3"),
                    color: Color(0xffff0f0f))),
          ],
        ),
      ))),
    );
  }
}
