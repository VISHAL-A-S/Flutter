import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: lec_21_2(),
  debugShowCheckedModeBanner: false,
));

class lec_21_2 extends StatelessWidget {
  const lec_21_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("WELCOME Page Screen!")
      ),
    );
  }
}
