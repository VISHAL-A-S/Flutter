import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: lec_19(),
      debugShowCheckedModeBanner: false,
    ));

class lec_19 extends StatefulWidget {
  const lec_19({Key? key}) : super(key: key);

  @override
  _lec_19State createState() => _lec_19State();
}

class _lec_19State extends State<lec_19> {
  int count = 0;
  double value = 0;
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontSize: 40.0),
            ),
            InkWell(
              splashColor: Colors.red,
              highlightColor: Colors.blue.withOpacity(0.5),
              hoverColor: Colors.yellow,
              child: Icon(
                Icons.add_circle,
                size: 60.0,
              ),
              onTap: () {
                setState(() {
                  count++;
                });
              },
            ),
            InkResponse(
              highlightColor: Colors.blue.withOpacity(0.5),
              highlightShape: BoxShape.circle,
              child: Icon(
                Icons.add_circle,
                size: 60.0,
              ),
              onTap: () {
                setState(() {
                  count++;
                });
              },
            ),
            Ink.image(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
              fit: BoxFit.cover,
              height: 100,
              width: 100,
              child: InkWell(
                splashColor: Colors.green.withOpacity(0.1),
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
              ),
            ),
            Text(value.round().toString()),
            Slider(
                min: 0,
                max: 100,
                value: value,
                divisions: 10,
                label: value.round().toString(),
                onChanged: (val) {
                  setState(() {
                    value = val;
                  });
                }),
            RangeSlider(
              min: 0,
              max: 100,
              divisions: 100,
              inactiveColor: Colors.lightGreenAccent,
              labels:
                  RangeLabels(values.start.toString(), values.end.toString()),
              values: values,
              onChanged: (val) {
                setState(() {
                  values = val;
                });
              },
              onChangeEnd: (val1) {
                print("End");
              },
              onChangeStart: (val2) {
                print("Start");
              },
            )
          ],
        ),
      ),
    );
  }
}
