import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:masud_demo/log_in.dart';
import 'package:masud_demo/model/student_model.dart';
import 'package:masud_demo/std_details.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}
List<String> stdName=[
  "Masud",
  "Masum",
  "Jakaria",
  "Josim",
  "Imran",
  "Bisnu",
  "Chinmoy"
];
List<String> stdDetails=[
  "I am Masud.I am 18 years old",
  "I am Masum.I am 18 years old",
  "I am Jakaria.I am 18 years old",
  "I am Josim.I am 18 years old",
  "I am Imran.I am 18 years old",
  "I am Bisnu.I am 18 years old",
  "I am Chinmoy.I am 18 years old"
];
List<String> stdImg=[
  "Masud",
  "Masum",
  "Jakaria",
  "Josim",
  "Imran",
  "Bisnu",
  "Chinmoy"
];
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
StudentDetails std1= StudentDetails
  ("Masud", "1001", "01873463585", "sason", "18");
StudentDetails std2= StudentDetails
  ("Masum", "1002", "01873463585", "khati", "25");
StudentDetails std3= StudentDetails
  ("Jakaria", "1003", "01873463585", "Ghonapara", "35");
StudentDetails std4= StudentDetails
  ("Josim", "1004", "01873463585", "Gobra", "26");
StudentDetails std5= StudentDetails
  ("Imran", "1005", "01873463585", "Ghonapara", "27");
StudentDetails std6= StudentDetails
  ("Bisnu", "1006", "01873463585", "Ghonapara", "22");
StudentDetails std7= StudentDetails
  ("Chinmoy", "1007", "01873463585", "Ghonapara", "21");
List<StudentDetails> stdDetailsList=[
  std1,std2,std3,std4,std5,std6,std7
];
class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List View Page"),
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlayAnimationDuration: Duration(
                milliseconds: 100
              ),
              autoPlay: true
            ),
            items: imgList
                .map((item) => Container(
              child: Center(
                  child:
                  Image.network(item, fit: BoxFit.cover, width: 1000)),
            ))
                .toList(),
          ),
          Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("The name of students of Batch-D",
               style:TextStyle(fontSize: 30,
                 color: Colors.blue
               ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: stdName.length,
                itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ElevatedButton(
                   onPressed: () {
                      Navigator.push(context,
                         MaterialPageRoute(builder:
                             (context)=> StdDetails(
                               stdObj: stdDetailsList[index],
                               img: stdImg[index], ),),);
                   },
                   child: Text(stdName[index],
                   textAlign: TextAlign.center,
                   style:TextStyle(fontSize: 25,
                   color: Colors.black),),
                 ),
               ) ;
                }
            ),
          )
        ],
      ),
    );
  }
}
