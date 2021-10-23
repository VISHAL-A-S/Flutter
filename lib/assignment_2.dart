import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: assignment_2(),
));
class assignment_2 extends StatefulWidget {
  const assignment_2({Key? key}) : super(key: key);

  @override
  _assignment_2State createState() => _assignment_2State();
}

class _assignment_2State extends State<assignment_2> {
  bool fav=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 25.0)),
        title: Text("Nike",style: TextStyle(fontWeight: FontWeight.w600),),
        backgroundColor: Colors.blue[800],
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart,size: 25.0)),
        ],
      ),
      body: OrientationBuilder(
        builder: (context,orientation){
          if(orientation==Orientation.portrait){
            return(
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:  MediaQuery.of(context).size.height*0.34,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image(
                      image: AssetImage("images/shoe.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Blue Black Nike Shoes",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("35%",style: TextStyle(color: Colors.green[600],fontWeight: FontWeight.bold,fontSize: 17.0),),
                              Row(
                                children: [
                                  Icon(Icons.euro,size: 17.0,),
                                  Text("75",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17.0),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Center(
                        child: Text("AVAILABLE SIZES",style: TextStyle(color: Colors.blue,fontSize: 16.0,fontWeight: FontWeight.bold),)
                      ),
                      Center(
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(onPressed: (){}, child: Text("UK7",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),
                            FlatButton(onPressed: (){}, child: Text("UK8",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),
                            FlatButton(onPressed: (){}, child: Text("UK9",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),
                            FlatButton(onPressed: (){}, child: Text("UK10",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),

                          ],
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                        child: Card(
                          elevation: 10.0,
                          shadowColor: Colors.blue[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                    Text("  Cash on delivery option available, only VISA, MASTERCARD.",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                    Text("  Return the shipment within 30 days from purchase.",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: Text("Product Details",style: TextStyle(color: Colors.blue,fontSize: 16.0,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                Text("  Full-length BRS 1000 carbon fiber rubber Waffle outsole for durability and traction.",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                Text("  Phylon forefoot provides a great toe-off,Low-top design for added mobility.",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                Text("  Breathable mesh uppers with synthetic overlays provide ventilation and support.",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
            );
          }
          else{
            return(
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.35,
                  height:  MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image(
                      image: AssetImage("images/shoe.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.65,
                  height:  MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Blue Black Nike Shoes",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900),),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("35%",style: TextStyle(color: Colors.green[600],fontWeight: FontWeight.bold,fontSize: 17.0),),
                                Row(

                                  children: [
                                    Icon(Icons.euro,size: 17.0,),
                                    Text("75",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17.0),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Center(
                            child: Text("AVAILABLE SIZES",style: TextStyle(color: Colors.blue,fontSize: 14.0,fontWeight: FontWeight.bold),)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Center(
                            child: ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(onPressed: (){}, child: Text("UK7",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),
                                FlatButton(onPressed: (){}, child: Text("UK8",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),
                                FlatButton(onPressed: (){}, child: Text("UK9",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),
                                FlatButton(onPressed: (){}, child: Text("UK10",style: TextStyle(),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),color: Colors.grey[200],),

                              ],
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                        child: Card(
                            elevation: 10.0,
                            shadowColor: Colors.blue[800],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                      Text("  Cash on delivery option available, only VISA, MASTERCARD.",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                      Text("  Return the shipment within 30 days from purchase.",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: Text("Product Details",style: TextStyle(color: Colors.blue,fontSize: 16.0,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                Text("  Full-length BRS 1000 carbon fiber rubber Waffle outsole for durability and traction.",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                Text("  Phylon forefoot provides a great toe-off,Low-top design for added mobility.",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle,color: Colors.blue[900],size: 11.0,),
                                Text("  Breathable mesh uppers with synthetic overlays provide ventilation and support.",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
            );
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.color_lens,color: Colors.blue[700],)),
            Spacer(),
            IconButton(onPressed: (){
              setState(() {
                fav= !fav;
              });
            }, icon: Icon(fav? Icons.favorite: Icons.favorite_border,color: Colors.red,))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Row(
          children: [
            Icon(Icons.add),
            Text(" Add to Cart")
          ],
        ),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}
