import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MaterialApp(
      home: assignment_3(),
      debugShowCheckedModeBanner: false,
    ));

class assignment_3 extends StatefulWidget {
  const assignment_3({Key? key}) : super(key: key);

  @override
  _assignment_3State createState() => _assignment_3State();
}

class _assignment_3State extends State<assignment_3> {
  final List<String> items =
      List<String>.generate(50, (index) => "${WordPair.random()}");
  List<bool> fav = List.generate(50, (index) => false);
  List<String> fav_place = [];
  int count = 0;
  int n = -4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup Name Generator"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return ListTile(
          title: Text("${items[i]}"),
          trailing: IconButton(
            onPressed: () {
              setState(() {
                fav[i] = !fav[i];
              });
            },
            icon: Icon(
              fav[i] ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            for (int a = 0; a < 50; a++) {
              if (fav.elementAt(a) == true) {
                fav_place.add(items[a]);
                count++;
              }
            }
            if (count == 4) {
              n = n + 4;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => assignment_3_subpage(
                            val1: fav_place[n + 0],
                            val2: fav_place[n + 1],
                            val3: fav_place[n + 2],
                            val4: fav_place[n + 3],
                          )));
            } else {
              showDialog(
                  context: context,
                  builder: (BuildContext) {
                    return (AlertDialog(
                      title: Text("Warning!"),
                      content: Text("You must select exactly 4 favorites"),
                      actions: [
                        FlatButton(
                            onPressed: () {},
                            child: Text(
                              "okay",
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    ));
                  });
            }
            count = 0;
            print(fav_place.isEmpty);
          });
        },
        child: Icon(Icons.settings),
      ),
    );
  }
}

class assignment_3_subpage extends StatelessWidget {
  final String val1, val2, val3, val4;
  const assignment_3_subpage(
      {Key? key,
      required this.val1,
      required this.val2,
      required this.val3,
      required this.val4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourite Words",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Image(
          image: AssetImage("images/back.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            fav_names_display(context, val1),
            fav_names_display(context, val2),
            fav_names_display(context, val3),
            fav_names_display(context, val4),
          ],
        ),
      ),
    );
  }
}

Widget fav_names_display(BuildContext context, String val) {
  return (Container(
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10.0,
        shadowColor: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[600],
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "$val",
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
