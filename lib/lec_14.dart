import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_14(),
  debugShowCheckedModeBanner: false,
));
class lec_14 extends StatelessWidget {
  const lec_14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("List and SnackBar"),
        centerTitle: true,
      ),
      body: getListView(),
    ));
  }
}
Widget getListView()
{
  var listItems=List<String>.generate(100, (index) => "Item $index");
  var Listview= ListView.builder(itemBuilder:(context,index){
    return ListTile(
      leading: Icon(Icons.arrow_forward),
      title: Text(listItems[index]),
      subtitle: Text("$index"),
      onTap: (){
         showSnackBar(context, listItems[index]);
      },
    );
  });
  return Listview;
}

void showSnackBar(BuildContext context,String item)
{
  var snackbar=SnackBar(content: Text("You have pressed $item"),
  duration: Duration(seconds: 2),
    action: SnackBarAction(
    label: "Undo",
    onPressed: (){

    },
  ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}