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
            child: RichText(
              text: TextSpan(children: [TextSpan(
                  text:"Need an account? ",
                  style: TextStyle(

                    color: Colors.black,
                  )
              ),
                TextSpan(
                    text:"sign up",
                    style: TextStyle(

                      color: Colors.blue,
                    )

                )]),
            )),
      ),
    );
  }
}
