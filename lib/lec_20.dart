import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: lec_20(),
      debugShowCheckedModeBanner: false,
    ));

class lec_20 extends StatefulWidget {
  const lec_20({Key? key}) : super(key: key);

  @override
  _lec_20State createState() => _lec_20State();
}

class _lec_20State extends State<lec_20> {
  DateTime? pickDate;
  TimeOfDay? pickTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pickDate = DateTime.now();
    pickTime=TimeOfDay.now();
  }
  _pickDate(BuildContext context) async
  {
    DateTime? date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(DateTime.now().year-5), lastDate: DateTime(DateTime.now().year+5));
    if(date!=null)
      {
        setState(() {
          pickDate=date;
        });
      }
  }
  _pickTime(BuildContext context) async
  {
    TimeOfDay? time=await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if(time!=null)
    {
      setState(() {
        pickTime=time;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Date and Time"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                  title: Text(
                      "Date: ${pickDate!.day}-${pickDate!.month}-${pickDate!.year}"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: () {
                    _pickDate(context);
                  }),
              ListTile(
                  title: Text(
                      "Time: ${pickTime!.hour}:${pickDate!.minute}:${pickDate!.second}"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: () {
                    _pickTime(context);
                  }),
            ],
          ),
        ));
  }
}
