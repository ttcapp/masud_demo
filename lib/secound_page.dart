import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}
double conHeight=50;
double conWidth=50;
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Column(
        children: [
          InkWell(
            onDoubleTap: (){
              setState(() {
                conHeight=250;
                conWidth=250;
              });
            },
            onTap: (){
              setState(() {
                conHeight=250;
                conWidth=250;
              });
            },
            child: AnimatedContainer(
              height: 50,
              width: 50,
              color: Colors.red,
                duration: Duration(milliseconds: 4000),

            ),
          )
        ],
      ),
    );
  }
}



