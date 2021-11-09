import 'package:flutter/material.dart';
import 'package:masud_demo/model/student_model.dart';

class StdDetails extends StatefulWidget {
 StudentDetails stdObj;
  String img;
   StdDetails({Key? key , required this.stdObj
     ,required this.img}) : super(key: key);

  @override
  _StdDetailsState createState() => _StdDetailsState();
}


class _StdDetailsState extends State<StdDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Students Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(widget.img),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Name : ",
                    style: TextStyle(
                      color: Colors.deepPurple,fontSize:50,
                    ),
                  ),
                  Text(widget.stdObj.name,
                  style: TextStyle(
                   color: Colors.deepPurple,fontSize:50,
                  ),
            ),
                ],
              ),
          ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Text("Id : ",
                style: TextStyle(
                  color: Colors.pink,fontSize:30,
                ),
              ),
              Text(widget.stdObj.id,
                style: TextStyle(
                  color: Colors.pink,fontSize:30,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Text("Numbar : ",
                style: TextStyle(
                  color: Colors.purple,fontSize:30,
                ),
              ),
              Text(widget.stdObj.number,
                style: TextStyle(
                  color: Colors.purple,fontSize:30,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Text("Address : ",
                style: TextStyle(
                  color: Colors.indigo,fontSize:30,
                ),
              ),
              Text(widget.stdObj.address,
                style: TextStyle(
                  color: Colors.indigo,fontSize:30,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Text("Age : ",
                style: TextStyle(
                  color: Colors.blue,fontSize:30,
                ),
              ),
              Text(widget.stdObj.age,
                style: TextStyle(
                  color: Colors.blue,fontSize:30,
                ),
              ),
            ],
          ),
        ),
            ElevatedButton(
                onPressed: (){

                }, child:Text ("Press") )
        ],
        ),
      ),
    );
  }
}
