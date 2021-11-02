import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masud_demo/my_home_page.dart';
import 'package:masud_demo/utills/all_colors.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
//for global variables
String _email= "masudcho@gmail.com";
String _password= "123456";
TextEditingController emailCont= TextEditingController();
TextEditingController passCont= TextEditingController();

final _formKey= GlobalKey<FormState>();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
          height: h,
          width: w,
          color: Colors.limeAccent.shade100,
          child: Padding(
            padding:  EdgeInsets.only(
                top: h*0.09,
              left: w*0.07,
              right: w*0.07,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Icon(Icons.account_circle_sharp,
                  size: h*0.09+ w*0.09,),
                  SizedBox(
                    height: 19,
                  ),
                  TextFormField(
                    controller: emailCont,
                    validator: (text){
                      if(text == null || text.isEmpty){
                        return "The Field is Empty";
                      }
                      else if(text != _email){
                        return "Invalid Email";
                      }
                    },
                    autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: AllColors.appThemeClr
                    ),
                    hintText:"Enter Your Email",
                    suffixIcon: Icon(Icons.email_rounded,
                    color: AllColors.appThemeClr,),
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeClr
                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: passCont,
                    validator: (text){
                      if(text == null || text.isEmpty){
                        return "The Field is Empty";
                      }
                      else if(text != _password){
                        return "Invalid Password";
                      }
                    },
                    obscureText: true,
                    autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: AllColors.appThemeClr
                    ),
                    hintText:"Enter Your Password",
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                    color: AllColors.appThemeClr,),
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeClr
                      ),
                    ),
                  ),
                  ),
                 SizedBox(height: 12,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     primary: AllColors.appThemeClr
                   ),
                     onPressed: () {

                     if(_formKey.currentState!.validate()){
                       Navigator.push(context,
                       MaterialPageRoute(builder: (context)
                           =>MyHomePage(),
                       ),);
                     }

                     },
                   child: Container(
                     width: 100,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.login),
                         SizedBox(width: 8,),
                         Text("LOG IN",style: TextStyle(
                           fontSize: 20
                         ),),
                       ],
                     ),
                   ),
                 ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
