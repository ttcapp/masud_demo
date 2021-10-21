import 'package:flutter/material.dart';
import 'package:masud_demo/utills/all_colors.dart';
import 'package:masud_demo/utills/all_strings.dart';
String imgSrcAvatar="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCcemOrw8mSjbGRWPILUjf-J-VArHi54RO7A&usqp=CAU";
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return Scaffold(
     appBar: AppBar(
       centerTitle: true,
      backgroundColor: AllColors.appBarClr,
      title: Text(Allstrings.masudHasan),
     ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
               Container(
                 height: width*0.25,
                 width:width*0.25 ,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                    image: NetworkImage(
                      imgSrcAvatar
                    )
                   ),
                   borderRadius: BorderRadius.circular(180),
                  border: Border.all(
                      width: 3,
                    color: Colors.lightGreenAccent
                  ),
                 ),
               ),
                Column(
                  children: [
                    Row(
                      children: [
                       SizedBox(
                         width: 15,
                       ),
                       Column(
                         children: [
                           Text(Allstrings.post3405,
                           style: TextStyle(
                             color: Colors.purple,
                             fontSize: 20,
                             fontWeight: FontWeight.bold

                           ),
                           ),
                           Text(Allstrings.fiar)

                         ],
                       ),
                        SizedBox(

                        ),
                       Column(
                         children: [
                           Text(Allstrings.posts6_5k,
                           style: TextStyle(
                             color: Colors.purple,
                             fontSize: 20,
                             fontWeight: FontWeight.bold

                           ),
                           ),
                           Text(Allstrings.follower)

                         ],
                       ),
                        SizedBox(
                          width: 15,
                        ),

                       Column(
                         children: [
                           Text(Allstrings.following,
                           style: TextStyle(
                             color: Colors.purple,
                             fontSize: 20,
                             fontWeight: FontWeight.bold

                           ),
                           ),
                           Text(Allstrings.followeng100_m)

                         ],
                       ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 5,bottom: 5,left: 25,right: 25,
                              ),
                              child: Text(Allstrings.message),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.indigo,

                              )
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 5,bottom: 5,left: 5,right: 5,
                              ),
                              child: Icon(Icons.account_circle,
                                size: 15,)
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.indigo,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
