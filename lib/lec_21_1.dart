import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: lec_21_1(),
  debugShowCheckedModeBanner: false,
));

class lec_21_1 extends StatelessWidget {
  const lec_21_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page Screen!")
      ),
    );
  }
}
