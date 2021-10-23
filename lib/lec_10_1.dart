import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(lec_10_1());
}
class lec_10_1 extends StatelessWidget {
  const lec_10_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            elevation: 20.0,
            shadowColor: Colors.red,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.blueAccent,
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                image: DecorationImage(
                  image: NetworkImage("https://image.freepik.com/free-vector/abstract-colorful-soft-watercolor-texture-background_1035-18958.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("APPBAR",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),),
            centerTitle: true,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.account_circle,size: 35.0,),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,size: 35.0,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 35.0,)),
            ],
          ),
          
        ),
      );
  }
}

