import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_15(),
  debugShowCheckedModeBanner: false,
));

class lec_15 extends StatelessWidget {
  const lec_15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value="";
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click button to move to subPage"),
            TextField(
              onChanged: (text){
                value=text;
              },
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>sub_page(value:value,str:"amrita")));
            }, child: Text("Go to SubPage"))
          ],
        ),
      ),
    );
  }
}
class sub_page extends StatefulWidget {
  final value;
  final str;
  const sub_page({Key? key,@required this.value,@required this.str}) : super(key: key);

  @override
  _sub_pageState createState() => _sub_pageState(value,str);
}

class _sub_pageState extends State<sub_page> {
  String value="";
  String str="";
  _sub_pageState(this.value,this.str);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sub Page"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click button to move to MainPage"),
            Text("$value",style: TextStyle(fontSize: 20.0),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back to MainPage")),
            SizedBox(
              height: 200.0,
            ),
            Text("$str",style: TextStyle(fontSize: 20.0),),
          ],
        ),
      ),
    );
  }
}


