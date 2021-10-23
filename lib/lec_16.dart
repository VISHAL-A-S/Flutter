import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_16(),
  debugShowCheckedModeBanner: false,
));

class lec_16 extends StatelessWidget {
  const lec_16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          color: Colors.grey[300],
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                top: MediaQuery.of(context).size.height*0.25,
                left: MediaQuery.of(context).size.width*0.6,

                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

