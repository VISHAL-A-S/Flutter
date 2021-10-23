import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(MaterialApp(
  home: assignment_4(),
  debugShowCheckedModeBanner: false,
));
class assignment_4 extends StatefulWidget {
  const assignment_4({Key? key}) : super(key: key);

  @override
  _assignment_4State createState() => _assignment_4State();
}

class _assignment_4State extends State<assignment_4> {
  bool male=false;
  bool female=false;
  double height=150;
  double weight=50;
  double age=25;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        shadowColor: Color(0xFF0A0C21),
        elevation: 30.0,
        title: Text("BMI CALCULATOR",style: TextStyle()),
        centerTitle: true,
        leading: Icon(FontAwesomeIcons.bars),
      ),
      body: Container(
        color: Color(0xFF0A0D22),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: ()
                    {
                      setState(() {
                        male=!male;
                        if(female)
                          {
                            female=!female;
                          }
                      });

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF1D1F33),
                      ),
                      width: 170,
                      height: 170,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Icon(FontAwesomeIcons.mars,size: male?98.0:95.0,color: Color(male? 0xFFFFFFFF:0xFFB8B9C6),),
                          SizedBox(
                            height: 17.0,
                          ),
                          Text("MALE",style: TextStyle(fontSize: 17.0,color: Color(male? 0xFFFFFFFF:0xFFB8B9C6),fontWeight: male?FontWeight.bold:FontWeight.normal)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: ()
                    {
                      setState(() {
                        female=!female;
                        if(male)
                          {
                            male=!male;
                          }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF1D1F33),
                      ),
                      width: 170,
                      height: 170,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Transform.rotate(angle: 120,child: Icon(FontAwesomeIcons.venus,size: female?98.0:95.0,color: Color(female? 0xFFFFFFFF:0xFFB8B9C6),)),
                          SizedBox(
                            height: 17.0,
                          ),
                          Text("FEMALE",style: TextStyle(fontSize:17.0,color: Color(female? 0xFFFFFFFF:0xFFB8B9C6),fontWeight: female?FontWeight.bold:FontWeight.normal))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 170,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xFF111428),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("HEIGHT",style: TextStyle(fontSize:17.0,color: Color(0xFFA2A5B4))),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${height.round()}",style: TextStyle(fontSize: 50.0,color: Colors.white,fontWeight: FontWeight.w900),),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 40.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("cm",style: TextStyle(fontSize:18.0,color: Color(0xFFA2A5B4))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14.0),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0xFF31142F),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFFA2A5B4),
                      ),
                      child: Slider(

                          min:100,
                          max: 200,
                          label: height.round().toString(),
                          divisions: 100,
                          value: height,
                          onChanged: (val){
                            setState(() {
                              height=val;
                            });
                      }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 170,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF111428)
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("WEIGHT",style: TextStyle(fontSize:17.0,color: Color(0xFFA2A5B4))),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("${weight.round()}",style: TextStyle(fontSize: 50.0,color: Colors.white,fontWeight: FontWeight.w900),),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              InkWell(
                                onTap: ()
                                {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF222747)
                                  ),
                                  height: 65.0,
                                  width: 65.0,
                                  child: Center(
                                      child: Icon(FontAwesomeIcons.minus,color: Colors.white,size: 30.0,)
                                  ),
                                ),
                              ),
                            SizedBox(width: 10.0,),
                            InkWell(
                              onTap: ()
                              {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF222747)
                                ),
                                height: 65.0,
                                width: 65.0,
                                child: Center(
                                  child: Icon(FontAwesomeIcons.plus,color: Colors.white,size: 30.0,)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 170,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF111428)
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("AGE",style: TextStyle(fontSize:17.0,color: Color(0xFFA2A5B4))),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("${age.round()}",style: TextStyle(fontSize: 50.0,color: Colors.white,fontWeight: FontWeight.w900),),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: ()
                              {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF222747)
                                ),
                                height: 65.0,
                                width: 65.0,
                                child: Center(
                                    child: Icon(FontAwesomeIcons.minus,color: Colors.white,size: 30.0,)
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            InkWell(
                              onTap: ()
                              {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF222747)
                                ),
                                height: 65.0,
                                width: 65.0,
                                child: Center(
                                    child: Icon(FontAwesomeIcons.plus,color: Colors.white,size: 30.0,)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 44.0,
              ),
              InkWell(
                onTap: ()
                {
                  if(male||female){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>result(height: height,weight: weight,age: age)));
                  }
                  else{
                    showDialog(context: context, builder: (BuildContext){
                      return AlertDialog(
                        backgroundColor: Color(0xFF272A4D),
                        title: Text("WARNING!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        content: Text("Selecting Gender is must.",style: TextStyle(color: Colors.white),),
                      );
                    });
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  color: Color(0xFFFF0066),
                  child: Center(
                    child: Text("CALCULATE YOUR BMI",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1.6),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class result extends StatefulWidget {
  final height,weight,age;
  const result({Key? key,@required this.height,@required this.weight,@required this.age}) : super(key: key);

  @override
  _resultState createState() => _resultState(height,weight,age);
}

class _resultState extends State<result> {
  double height,weight,age;
  _resultState(this.height,this.weight,this.age);
  String status="";
  List<String> info=["Good Job!","Keep try to NORMAL"];
  List<double> val=[18.5,25.0,30];
  @override
  Widget build(BuildContext context) {
    int a=0,b=0,c=0;
    double BMI=(weight/(this.height*this.height))*10000;
    Color clr;
    if(BMI<val[0])
      {
        status="UNDERWEIGHT";
        a=3;
        b=0;
        c=1;
        clr=Colors.yellowAccent;
      }
    else if(BMI>val[0] && BMI<val[1])
      {
        status="NORMAL";
        a=0;
        b=1;
        c=0;
        clr=Colors.green;
      }
    else if(BMI>val[1] && BMI<val[2])
    {
      status="OVERWEIGHT";
      a=1;
      b=2;
      c=1;
      clr=Colors.orangeAccent;
    }
    else{
      status="OBESE";
      a=4;
      b=2;
      c=1;
      clr=Colors.red;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        shadowColor: Color(0xFF0A0C21),
        elevation: 30.0,
        title: Text("BMI CALCULATOR",style: TextStyle()),
        centerTitle: true,
        leading: Icon(FontAwesomeIcons.bars),
      ),
      body: Container(
        color: Color(0xFF0A0D22),
        child: Center(
          child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Your Result",style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.bold),),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF1D1F33),
                  ),
                  width: 340,
                  height: 500,
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 45.0),
                  child: Column(
                    children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Text("$status",style: TextStyle(fontSize: 22.0,color: clr,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text("${BMI.toStringAsFixed(1)}",style: TextStyle(fontSize: 100.0,color: Colors.white,fontWeight: FontWeight.w900),),
                      SizedBox(height: 15.0,),
                      Text("$status BMI range:",style: TextStyle(fontSize: 22.0,color: Color(0xFF595968)),),
                      SizedBox(
                        height: 7.0,
                      ),
                  (a==3 || a==4)? ((a==3)?Text("Less than ${val[b]} Kg/m^2",style: TextStyle(fontSize: 22.0,color: Colors.white),):Text("Greater than ${val[b]} Kg/m^2",style: TextStyle(fontSize: 22.0,color: Colors.white),)):Text("${val[a]} - ${val[b]} Kg/m^2",style: TextStyle(fontSize: 22.0,color: Colors.white),),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text("You have a $status body",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                      SizedBox(
                        height:5.0,
                      ),
                      Text("weight. ${info[c]}",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                      SizedBox(
                        height: 44.0,
                      ),
                      InkWell(
                        onTap: ()
                        {

                        },
                        child: Container(
                          height: 70.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFF191A2E)
                          ),
                          child: Center(
                            child: Text("SAVE RESULT",style: TextStyle(fontSize: 20.0,color: Color(0xFFDCDCE6)),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70.0,
                    color: Color(0xFFFF0066),
                    child: Center(
                      child: Text("RE-CALCULATE YOUR BMI",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1.6),),
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}

