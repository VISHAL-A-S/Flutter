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
        appBar: AppBar(title: Text("Text Widget")),
        body: Center(
          child: Image(
            image: AssetImage('images/iphone_wallpaper.jpg'),
          ),
        )
      ),
    );
  }
}
