import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_23(),
  debugShowCheckedModeBanner: false,
));
class lec_23 extends StatefulWidget {
  const lec_23({Key? key}) : super(key: key);

  @override
  _lec_23State createState() => _lec_23State();
}

class _lec_23State extends State<lec_23> {
  int selectedRadio=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio=0;
  }
  setSelectedRadio(var val)
  {
    setState(() {
      selectedRadio=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Radio(value: 1, groupValue: selectedRadio, onChanged: (val){
                setSelectedRadio(val);
              },activeColor: Colors.red,),
              Radio(value: 2, groupValue: selectedRadio, onChanged: (val){
                setSelectedRadio(val);
              }),
              Divider(
                height: 50.0,
              ),
              RadioListTile(value: 1, groupValue: selectedRadio, onChanged: (val)
              {
                setSelectedRadio(val);
              },
                activeColor: Colors.red,
                tileColor: Colors.lightGreenAccent,
              title: Text("Value 1"),
              subtitle: Text("Wrong!"),
              secondary: ElevatedButton(
                child: Text("Button 1"),
                onPressed: ()
                {

                },
              ),),
              RadioListTile(value: 2, groupValue: selectedRadio, onChanged: (val)
              {
                setSelectedRadio(val);
              },
                title: Text("Value 2"),
                subtitle: Text("Correct!"),),
            ],
          )
        ),
      ),
    );
  }
}
