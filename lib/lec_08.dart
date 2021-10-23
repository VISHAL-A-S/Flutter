import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _securetext = true;
  String _errormsg = "";
  TextEditingController _textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
              child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: _textcontroller,
                keyboardType: TextInputType.name,
                obscureText: _securetext,
                maxLength: 10,
                decoration: InputDecoration(
                    errorText: _errormsg,
                    hintText: "Enter the Name: ",
                    labelText: "Name:",
                    hintStyle: TextStyle(color: Colors.grey[100]),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 30),
                    border: OutlineInputBorder(),
                    fillColor: Colors.orangeAccent,
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(_securetext
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _securetext = !_securetext;
                        });
                      },
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print(_textcontroller.text);
                      if (_textcontroller.text.length < 6) {
                        _errormsg = "Minimum 6 Characters required!";
                      } else {
                        _errormsg = "";
                      }
                    });
                  },
                  child: Text("Click Me!"))
            ],
          )),
        ),
      ),
    );
  }
}
