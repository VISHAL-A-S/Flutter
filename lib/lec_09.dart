import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(lec_09());
}

class lec_09 extends StatelessWidget {
  const lec_09({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child:
          Scaffold(
            body: Center(
              child: Container(
                color: Colors.teal[50],
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors:[
                                   Colors.white,
                                   Colors.lightBlueAccent,
                                   Colors.blue,
                                  ],
                                  begin:Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Text(
                                "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      shadowColor: Colors.black,
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors:[
                                  Colors.white,
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                ],
                                begin:Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Text(
                              "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

      ),
    );
  }
}
