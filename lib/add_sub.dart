import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(add_sub());
}

class add_sub extends StatefulWidget {
  const add_sub({Key? key}) : super(key: key);

  @override
  _add_subState createState() => _add_subState();
}

class _add_subState extends State<add_sub> {
  int val = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Addition and Subtraction")),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Text("$val",
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  )),
              SizedBox(
                height: 200.0,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 100.0,
                      child: FloatingActionButton(
                        onPressed: () {
                          setState(
                            () {
                              val++;
                            },
                          );
                        },
                        child: Icon(Icons.add,size: 50.0,),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 100.0,
                      child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          val--;
                        });
                      },
                      child: Icon(Icons.minimize_rounded,size: 50.0,),
                      backgroundColor: Colors.red,
                  ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
