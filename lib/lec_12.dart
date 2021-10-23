import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_12(),
  debugShowCheckedModeBanner: false,
));
class lec_12 extends StatelessWidget {
  const lec_12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(

        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Demo"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Text("First",style: TextStyle(fontSize: 25.0),),
                Text("Second",style: TextStyle(fontSize: 25.0),),
                Text("Third",style: TextStyle(fontSize: 25.0),),
              ],
            ),

          ),
          body: TabBarView(
            children: [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),
        ),
      ),
    );
  }
}
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("First Page",style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Second Page",style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Third Page",style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
