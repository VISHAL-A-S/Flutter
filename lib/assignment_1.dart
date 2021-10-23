import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(layoutAssignment());
}

class layoutAssignment extends StatefulWidget {
  const layoutAssignment({Key? key}) : super(key: key);

  @override
  _layoutAssignmentState createState() => _layoutAssignmentState();
}

class _layoutAssignmentState extends State<layoutAssignment> {
  TextEditingController _phone_no = TextEditingController();
  TextEditingController _email_id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Center(
          child: Container(
            color: Colors.teal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 80.0,
                ),
                Center(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/profile.jpeg"),
                      backgroundColor: Colors.transparent,
                      radius: 80.0,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Vishal A.S.",
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 55.0,
                    ),
                  ),
                ),
                Center(
                  child: Text("Flutter Developer",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Pacifico",
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[100],
                      )),
                ),
                Divider(
                  height: 30.0,
                  thickness: 1.0,
                  indent: 120,
                  endIndent: 120,
                  color: Colors.teal[100],
                ),
                Center(
                  child: SizedBox(
                    width: 365.0,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: _phone_no,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.phone,
                          size: 25.0,
                          color: Colors.teal,
                        ),
                        prefixText: "+91 ",
                        prefixStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        counterText: "",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: SizedBox(
                    width: 365.0,
                    child: TextField(

                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.w500,
                      ),
                      controller: _email_id,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email,
                          size: 25.0,
                          color: Colors.teal,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
