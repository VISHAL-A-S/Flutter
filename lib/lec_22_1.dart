import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  File? _image;
  final imagePicker = ImagePicker();
  List<String> receiver = ["9952715720", "9442652106"];

  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  void _sendSMS(String message, List<String> receiver) async
  {
    String _results = await sendSMS(message: message, recipients: receiver).catchError((onError) {
      print(onError);
    });
    print(_results);
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image == null ? Text("No image is selected") : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // getImage();
          _sendSMS("This is a test message", receiver);
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}