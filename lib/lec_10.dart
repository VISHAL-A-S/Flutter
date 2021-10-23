import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(lec_10());
}

class lec_10 extends StatelessWidget {
  const lec_10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Card(
                elevation: 10.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  color: Colors.amber,
                  child: Container(
                    height: 620,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Image.network("https://cdn.vox-cdn.com/thumbor/e3etn9oj-bDsaMR-uEGtF50jCO0=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/13372511/REC_Elon_LedeImage__1_.png"),
                        Text(
                          "Persistence is very important. You should not give up unless you are forced to give up",
                          style: TextStyle(
                            fontSize: 23.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "-Elon Musk",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ButtonBar(
                          children: [
                            FlatButton(onPressed: (){}, child: Text("Agree!",style: TextStyle(color: Colors.white),),color:Colors.purple),
                          RaisedButton(onPressed: (){},child:Text("Disagree!",style: TextStyle(color: Colors.white),),color:Colors.red),
                          ],
                        ),
                      ],
                    ),
                  ))),
        ),
      ),
    );
  }
}
