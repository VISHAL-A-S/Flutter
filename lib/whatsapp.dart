import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(MaterialApp(
  home: whatsapp(),
  debugShowCheckedModeBanner: false,
));
class whatsapp extends StatefulWidget {
  const whatsapp({Key? key}) : super(key: key);

  @override
  _whatsappState createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width/5;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075F56),
          title: Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23.0),),
          actions: [
            Icon(Icons.search,size: 30.0,),
            PopupMenuButton<int>(iconSize: 30.0,itemBuilder: (context)=>[
            PopupMenuItem(child: Text("New group"),value: 0,),
              PopupMenuItem(child: Text("New broadcast"),value: 1,),
              PopupMenuItem(child: Text("Linked devices"),value: 2,),
              PopupMenuItem(child: Text("Starred messages"),value: 3,),
              PopupMenuItem(child: Text("Payments"),value: 4,),
              PopupMenuItem(child: Text("Settings"),value: 5,),
              ],onSelected: (item){
              switch(item)
              {
                case 5:
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>settings()));
              }
            },

            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              Container(
                  height: 40.0,width: 35.0,
                  child: Icon(Icons.camera_alt)),
              Container(
                  height: 20.0,width: width,
                  child: Text("   CHATS",style: TextStyle(fontSize: 16.0),)),
              Container(
                height: 40.0,width: width,
                child: Row(
                  children: [
                    Text(" STATUS",style: TextStyle(fontSize: 16.0),),
                    SizedBox(width: 5.0,),
                    Icon(Icons.circle,size: 7.0,),
                  ],
                ),
              ),
              Container(
                  height: 20.0,width: width,
                  child: Text("   CALLS",style: TextStyle(fontSize: 16.0),)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
              camera(),
            chats(),
            status(),
            calls(),
          ],
        ),
      ),
    );
  }
}
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}
class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075F56),
        title: Text("Settings",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 23.0),),
        leading: IconButton(icon:Icon(Icons.arrow_back,size: 30.0,),onPressed: ()
          {
            Navigator.pop(context);
          },),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            ListTile(
              leading: FittedBox(
                fit: BoxFit.fill,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/profile.jpeg"),
                  radius: 40.0,
                ),
              ),
              trailing: Icon(FontAwesomeIcons.qrcode,color: Color(0xFF6BB3A7),size: 25.0,),
              title: Text("Vishal A S",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
              subtitle: Text("Available",style: TextStyle(color: Colors.grey[600]),),
            ),
            Divider(

            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.key,color: Color(0xFF6BB3A7),size: 25.0),
              title: Text("Account",style: TextStyle(fontSize: 20.0),),
              subtitle: Text("Privacy, security, change number",style: TextStyle(fontSize: 15.0),),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.rocketchat,color: Color(0xFF6BB3A7),size: 25.0),
              title: Text("Chats",style: TextStyle(fontSize: 20.0),),
              subtitle: Text("Theme, wallpapers, chat history",style: TextStyle(fontSize: 15.0),),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.bell,color: Color(0xFF6BB3A7),size: 25.0),
              title: Text("Notifications",style: TextStyle(fontSize: 20.0),),
              subtitle: Text("Message, group & call tones",style: TextStyle(fontSize: 15.0),),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.circleNotch,color: Color(0xFF6BB3A7),size: 25.0),
              title: Text("Storage and data",style: TextStyle(fontSize: 20.0),),
              subtitle: Text("Network usage, auto-download",style: TextStyle(fontSize: 15.0),),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.question,color: Color(0xFF6BB3A7),size: 25.0),
              title: Text("Help",style: TextStyle(fontSize: 20.0),),
              subtitle: Text("Help center, contact us, privacy policy",style: TextStyle(fontSize: 15.0),),
            ),
            Divider(
              indent: 70.0,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.peopleCarry,color: Color(0xFF6BB3A7),size: 25.0),
              title: Text("Invite a friend",style: TextStyle(fontSize: 20.0),),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("from",style: TextStyle(fontSize: 15.0,color: Colors.grey[600],),),
            Text("FACEBOOK",style: TextStyle(fontSize: 16.0,letterSpacing: 2.0,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}

class camera extends StatelessWidget {
  const camera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(
          "Camera"
        )
      ),
    );
  }
}

class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names=["Dhoni","Virat Kohli","Rohit Sharma","Jadeja","Shami","Bumrah","Raina","Pant","KL Rahul","Hardik Pandya","Bhuvneshwar kumar"];
    List<String> msg=["How are you?","Congratulations","Thank You bro.","Hey There! Are you using whatsapp?","What are you doing tomorrow?","Fine?","Tmr Plan?","OK","Well Played!","congratulations","Thank you!"];
    List<String> img=["Dhoni.jpg","Virat.jpg","Rohit Sharma.jpeg","Jadeja.jpg","Shami.jpg","Bumrah.jpg","Raina.jpg","Pant.jpeg","KL Rahul.jpg","Hardik Pandya.jpg","Bhuvneshwar kumar.jpg"];
    return Scaffold(
      body: Container(
        child:
        ListView.separated(

            itemBuilder: (context,i)
        {
          return ListTile(
            title: Text("${names[i]}",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
            subtitle: Text("${msg[i]}"),
            trailing: (i==0||i==1)?(i==1)?Column(
              children: [
                Text("10:07 am",style: TextStyle(color:Color(0xFF0ACE6A)),),
                Stack(
                  children: [
                    Icon(Icons.circle,color:Color(0xFF0ACE6A),),
                    Positioned(top:3,right:2,left: 8,bottom: 3,child: Container(child: Text("1",style: TextStyle(color: Colors.white),)))
                  ],
                )
              ],
            ):
            Column(
              children: [
                Text("12:53 pm",style: TextStyle(color:Color(0xFF0ACE6A)),),
                Stack(
                  children: [
                    Icon(Icons.circle,color: Color(0xFF0ACE6A),),
                    Positioned(top:3,right:2,left: 8,bottom: 3,child: Container(child: Text("3",style: TextStyle(color: Colors.white),)))
                  ],
                )
              ],
            ):Text("Yesterday",style: TextStyle(color:Colors.grey[600]),),
            leading: FittedBox(
              fit: BoxFit.cover,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/${img[i]}"),
                radius: 40.0,
              ),),
          );
        },
            separatorBuilder: (context,i)
        {
          return Divider(thickness: 0.5,color: Colors.grey[400],indent: 80.0,);
        },
            itemCount: names.length),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0ACE6A),
        onPressed: (){
        },
        child: Icon(Icons.chat,color: Colors.white,),
      ),
    );
  }
}
class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            title: Text("My status",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
            subtitle: Text("Tap to add status update"),
            leading: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/profile.jpeg"),
                    ),
                Positioned(top: 22,left:22,child: Icon(Icons.circle,color: Color(0xFF0ACE6A),size: 20.0,)),
                Positioned(top:23,left:23,child: Icon(Icons.add,color: Colors.white,size: 18.0,))
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30.0,
            color: Colors.grey[300],
            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Recent updates",style: TextStyle(fontSize: 17.0),),
              ],
            ),
          ),
          ListTile(
            title: Text("Dhoni",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
            subtitle: Text("Today, 12:50 pm"),
            leading: Stack(
              children: [
                Icon(Icons.brightness_1_outlined,color: Color(0xFF108F80),size: 55.0,),

                Positioned(bottom: 11,right:5,left:5,child: CircleAvatar(radius: 16.0,
                  backgroundImage: AssetImage("images/wc11.jpg"),
                ),),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30.0,
            color: Colors.grey[300],
            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Viewed updates",style: TextStyle(fontSize: 17.0),),
              ],
            ),
          ),
          ListTile(
            title: Text("Rohit Sharma",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
            subtitle: Text("Today, 7:25 am"),
            leading: Stack(
              children: [
                Icon(Icons.brightness_1_outlined,color: Colors.grey[400],size: 55.0,),

                Positioned(bottom: 11,right:5,left:5,child: CircleAvatar(radius: 16.0,
                  backgroundImage: AssetImage("images/rohitfam.jpeg"),
                ),),
              ],
            ),
          ),
          ListTile(
            title: Text("Virat Kohli",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
            subtitle: Text("Yesterday, 11:47 pm"),
            leading: Stack(
              children: [
                Icon(Icons.brightness_1_outlined,color: Colors.grey[400],size: 55.0,),

                Positioned(bottom: 11,right:5,left:5,child: CircleAvatar(radius: 16.0,
                  backgroundImage: AssetImage("images/viratfam.jpg"),
                ),),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 43.0,
            width: 43.0,
            child: FloatingActionButton(backgroundColor: Colors.grey[200],onPressed: (){

            },child: Icon(FontAwesomeIcons.pencilAlt,color: Colors.grey[700],)),
          ),
          SizedBox(
            height: 15.0,
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFF0ACE6A),
            onPressed: (){
            },
            child: Icon(Icons.camera_alt,color: Colors.white,),
          ),
        ],
      )
    );
  }
}
class calls extends StatelessWidget {
  const calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text("Dhoni",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
              subtitle: Row(
                children: [
                  Transform.rotate(angle: 100,child: Icon(Icons.arrow_forward_outlined,color: Colors.lightGreen[500],size: 19.0,)),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Today, 12:03 pm"),
                ],
              ),
              trailing: Icon(Icons.call,color: Color(0xFF108F80)),
              leading: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/Dhoni.jpg"),
                  radius: 40.0,
                ),),
            ),
            Divider(
              indent: 80.0,
              thickness: 1,
            ),
            ListTile(
              title: Text("Rohit Sharma",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
              subtitle: Row(
                children: [
                  Transform.rotate(angle: 100,child: Icon(Icons.arrow_forward_outlined,color: Colors.lightGreen[500],size: 19.0,)),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Today, 8:36 am"),
                ],
              ),
              trailing: Icon(Icons.call,color: Color(0xFF108F80)),
              leading: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/Rohit Sharma.jpeg"),
                  radius: 40.0,
                ),),
            ),
            Divider(
              indent: 80.0,
              thickness: 1,
            ),
            ListTile(
              title: Text("Dhoni",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
              subtitle: Row(
                children: [
                  Transform.rotate(angle: 210,child: Icon(Icons.arrow_forward_outlined,color: Colors.red,size: 19.0,)),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Yesterday, 7:54 pm"),
                ],
              ),
              trailing: Icon(Icons.call,color: Color(0xFF108F80)),
              leading: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/Dhoni.jpg"),
                  radius: 40.0,
                ),),
            ),
            Divider(
              indent: 80.0,
              thickness: 1,
            ),
            ListTile(
              title: Text("Virat Kohli",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
              subtitle: Row(
                children: [
                  Transform.rotate(angle: 210,child: Icon(Icons.arrow_forward_outlined,color: Colors.red,size: 19.0,)),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("Yesterday, 2:05 pm"),
                ],
              ),
              trailing: Icon(Icons.call,color: Color(0xFF108F80)),
              leading: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/Virat.jpg"),
                  radius: 40.0,
                ),),
            ),
            Divider(
              indent: 80.0,
              thickness: 1,
            ),
            ListTile(
              title: Text("Virat Kohli",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
              subtitle: Row(
                children: [
                  Transform.rotate(angle: 100,child: Icon(Icons.arrow_forward_outlined,color: Colors.lightGreen[500],size: 19.0,)),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("8 July, 6:50 pm"),
                ],
              ),
              trailing: Icon(Icons.call,color: Color(0xFF108F80)),
              leading: FittedBox(
                fit: BoxFit.cover,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/Virat.jpg"),
                  radius: 40.0,
                ),),
            ),
          ],

        )
      ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 43.0,
              width: 43.0,
              child: FloatingActionButton(backgroundColor: Colors.grey[200],onPressed: (){

              },child: Icon(FontAwesomeIcons.video,color: Colors.grey[700],)),
            ),
            SizedBox(
              height: 15.0,
            ),
            FloatingActionButton(
              backgroundColor: Color(0xFF0ACE6A),
              onPressed: (){
              },
              child: Icon(Icons.add_call,color: Colors.white,),
            ),
          ],
        )
    );
  }
}




