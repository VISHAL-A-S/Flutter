import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'lec_12.dart';
void main() => runApp(MaterialApp(
  home: lec_13(),
  debugShowCheckedModeBanner: false,
));
class lec_13 extends StatefulWidget {
  const lec_13({Key? key}) : super(key: key);

  @override
  _lec_13State createState() => _lec_13State();
}

class _lec_13State extends State<lec_13> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _pages=[
      FirstPage(),
      SecondPage(),
      ThirdPage(),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: _pages.elementAt(_index),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          elevation: 50,
          backgroundColor: Colors.grey[200],
          mouseCursor: SystemMouseCursors.grab,
          unselectedItemColor: Colors.grey[600],
          selectedIconTheme: IconThemeData(size: 40.0),
          selectedItemColor: Colors.black87,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
          unselectedLabelStyle: TextStyle(fontSize: 16.0),
          currentIndex: _index,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.lightBlueAccent),
            BottomNavigationBarItem(icon: Icon(Icons.camera),label: "Camera",backgroundColor: Colors.lightGreenAccent),
          ],
          onTap: (index){
            setState(() {
              _index=index;
            });
          },
        ),
      ),
    );
  }
}
