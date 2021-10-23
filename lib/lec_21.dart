import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'lec_21_1.dart';
import 'lec_21_2.dart';
void main() => runApp(MaterialApp(
  home: lec_21(),
  debugShowCheckedModeBanner: false,
));
class lec_21 extends StatelessWidget {
  const lec_21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("Proceed!"),
          onPressed: ()async{
            bool? visitedFlag=await getVisitingFlag();
            if(visitedFlag==true)
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>lec_21_1()));
              }
            else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>lec_21_2()));
              setVisitingFlag();
            }
          },
        ),
      ),
    );
  }
}
setVisitingFlag() async {
  SharedPreferences preferences= await SharedPreferences.getInstance();
  preferences.setBool("Already Visited", true);
}

getVisitingFlag() async{
  SharedPreferences preferences=await SharedPreferences.getInstance();
  bool? alreadyVisited=preferences.getBool("Already Visited");
  return alreadyVisited;
}