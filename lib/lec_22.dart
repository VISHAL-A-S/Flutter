import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: lec_22(),
  debugShowCheckedModeBanner: false,
));
class lec_22 extends StatefulWidget {
  const lec_22({Key? key}) : super(key: key);

  @override
  _lec_22State createState() => _lec_22State();
}

class _lec_22State extends State<lec_22> {
  void selectedItem(BuildContext context,item)
  {
    switch(item)
    {
      case 0:
        print("Settings");
        break;
      case 1:
        print("Privacy");
        break;
      case 2:
        print("LogOut");
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POPUP MENU"),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(itemBuilder: (context)=>
            [
              PopupMenuItem(child: Text("Settings"),value: 0,),
              PopupMenuItem(child: Text("Privacy"),value: 1,),
              PopupMenuDivider(),
              PopupMenuItem(value: 2,
                child: Row(
                  children: [
                    Icon(Icons.logout,color:Colors.red),
                    SizedBox(width: 10.0,),
                    Text("Logout"),
                  ],
                ),
              ),
            ],
            onSelected: (item){
            selectedItem(context,item);
            },
          )
        ],
      ),

    );
  }
}
