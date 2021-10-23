
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_11(),
));
class lec_11 extends StatelessWidget {
  const lec_11({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).padding.top+(kToolbarHeight);
    return Scaffold(
      appBar: AppBar(
        title: Text("OrientationBuilder"),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context,orientation){
          if(orientation==Orientation.portrait)
            {
              return(Column(
                children: [
                  display(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.5-height/2, "1",Colors.redAccent),
                  display(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.5-height/2, "2",Colors.blueAccent),
                ],
              )
              );
            }
          else{
            return(Row(
              children: [
                 display(MediaQuery.of(context).size.width*0.5, MediaQuery.of(context).size.height, "1",Colors.redAccent),
                  display(MediaQuery.of(context).size.width*0.5, MediaQuery.of(context).size.height, "2",Colors.blueAccent),
              ],
            )
            );
          }
        },
      ),
    );
  }
}
Widget display(double width,double height,String text,Color clr)
{
  return (
      Container(
        width: width,
        height: height,
        color: clr,
        child: Text("TEXT $text",style: TextStyle(
          fontSize: 30.0,
        ),),
      )
  );
}
