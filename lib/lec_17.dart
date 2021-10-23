import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_17(),
  debugShowCheckedModeBanner: false,
));

class lec_17 extends StatefulWidget {
  const lec_17({Key? key}) : super(key: key);

  @override
  _lec_17State createState() => _lec_17State();
}

class _lec_17State extends State<lec_17> {
  final titles=["List 1","List 2","List 3","List 4","List 5",];
  final subtitles=["SubList 1","SubList 2","SubList 3","SubList 4","SubList 5",];
  final icons=[Icons.account_balance,Icons.add,Icons.add_shopping_cart_sharp,Icons.camera,Icons.euro];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Data"),
      ),
      body: ListView.separated(
        separatorBuilder: (context,index){
          return Divider(
            thickness: 3.0,
            color: Colors.yellow,
          );
        },
          itemCount: titles.length,
          itemBuilder:(context,index)
      {

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(titles[index]),
              subtitle: Text(subtitles[index]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://analyticsindiamag.com/wp-content/uploads/2020/10/7d744a684fe03ebc7e8de545f97739dd.jpg"),

              ),
              trailing: Icon(icons[index]),
            ),
          ),
        );
      }),
    );
  }
}
