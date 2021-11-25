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
  "Nasrullah Chowdhury",
  "Ataullah",
  "Younus",
  "Tamim",
  "Shofi",
  "Shohidul",
  "Rasel",
  "Sufian"
];
List<String> stdDetails=[
  "I am Nasrullah Chowdhury.I am 18 years old",
  "I am Masum.I am 18 years old",
  "I am Younus.I am 18 years old",
  "I am Tamim.I am 18 years old",
  "I am Shofi.I am 18 years old",
  "I am Shohidul.I am 18 years old",
  "I am Rasel.I am 18 years old",
  "I am Sufian.I am 18 years old"
];
List<String> stdImg=[
  "assets/images/images9.jpg",
  "assets/images/images1.jpg",
  "assets/images/images2.jpg",
  "assets/images/images3.jpg",
  "assets/images/images4.jpg",
  "assets/images/images5.jpg",
  "assets/images/images6.jpg",
  "assets/images/images10.jpg"
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
  ("Md Nasrullah Chowdhury", "01", "01873463585", "Sason", "18","masudcho79@gmail.com");
StudentDetails std2= StudentDetails
  ("Md Ataullah Chowdhury", "02", "01873463585", "Gobra", "17","a");
StudentDetails std3= StudentDetails
  ("Md Younus Chowdhury", "03", "01873463585", "Gobra", "19","r");
StudentDetails std4= StudentDetails
  ("Md Tamim Hasan", "04", "01873463585", "Gemadanga", "17","d");
StudentDetails std5= StudentDetails
  ("Md Ahmad Shofi", "05", "01873463585", "Gobra", "17","n");
StudentDetails std6= StudentDetails
  ("Md Shohidul Islam", "06", "01873463585", "Ghonapara", "17","b");
StudentDetails std7= StudentDetails
  ("Md Rasel Shikdar", "07", "01873463585", "Nilfa", "16","g");
StudentDetails std8= StudentDetails
  ("Md Sufian", "08", "01873463585", "Pataliah", "17","n");
List<StudentDetails> stdDetailsList=[
  std1,std2,std3,std4,std5,std6,std7,std8
];
class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Winner Page"),
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
           child: Text("The name of students of Jamate Mejan 2021",
               style:TextStyle(fontSize: 20,
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
