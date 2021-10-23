import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: lec_24(),
  debugShowCheckedModeBanner: false,
));
class lec_24 extends StatefulWidget {
  const lec_24({Key? key}) : super(key: key);

  @override
  _lec_24State createState() => _lec_24State();
}

class _lec_24State extends State<lec_24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(builder: (context,double value,child) => Center(
        child: Image.network('https://img.stickers.cloud/packs/e6bdc294-6c1e-4561-aef6-cbb0ed39e0a4/webp/911654f4-a187-46bf-8f71-6a95aaa759ff.webp'),
      ),
        duration: Duration(milliseconds: 15000), tween: Tween<double>(
          begin: 200,
          end: 20,
        ),

      ),
    );
  }
}
