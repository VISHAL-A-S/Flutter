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
          body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            block_fn(4, "8D43B3"),
            Padding(padding: EdgeInsets.all(2.0)),
            Expanded(
              flex: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  block_fn(5, "2AA650"),
                  Padding(padding: EdgeInsets.all(2.0)),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        block_fn(2, "58AAE8"),
                        Padding(padding: EdgeInsets.all(2.0)),
                        block_fn(8, "E74E33"),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(2.0)),
            block_fn(2, "ffff00"),
            Padding(padding: EdgeInsets.all(2.0)),
          ],
        ),
      )),
    );
  }
}

Widget block_fn(int flx, String t){
  return (Expanded(
    flex: flx,
    child: Container(
      color: Color(int.parse("0xff$t")),
      child: Center(
        child: Text("#$t",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center),
      ),
    ),
  ));
}
