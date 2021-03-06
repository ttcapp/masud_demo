import 'package:flutter/material.dart';
import 'package:masud_demo/log_in.dart';
import 'package:masud_demo/my_home_page.dart';
import 'package:slide_drawer/slide_drawer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SlideDrawer(
        offsetFromRight: 320,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF089765),
            Color(0xFF456099),
          ],
        ),
        items: [
          MenuItem('Home',
              icon: Icons.account_balance,
              onTap: (){}),
          MenuItem('Second Page',
              icon: Icons.visibility,
              onTap: (){
            
              }),
          MenuItem('Third Page',
              icon: Icons.ac_unit,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.account_circle_rounded,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.settings,
              onTap: (){}),
        ],
        child: LogIn(),
      ),
    );
  }
}
