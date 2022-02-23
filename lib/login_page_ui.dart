import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:simple_animations/simple_animations.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import'signup_page_ui.dart';
import 'home_page.dart';
import 'bottom_nav_bar_page.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

bool signIn  = false;
var emailController;
var passwordController;

@override
void initState() {
  // TODO: implement initState
  super.initState();
  emailController = TextEditingController();
  passwordController = TextEditingController();
}


  void changeState(){
    if (signIn){
      setState(() {
        signIn = false;
      });
    }

    else{
      setState((){
        signIn = true;
      });
    }
  }

  // void registerUser()async{
  //   Uri url = Uri.parse("https://groovemusicnepal.000webhostapp.com/login/signup.php");
  //   var data = {
  //     "email": emailController.text,
  //     "password": passwordController.text,
  //   };
  //   var res = await http.post(url,body: data);
  //
  //   if (res.body == "account exists"){
  //     Fluttertoast.showToast(msg: "Account already exists, please Proceed to Login", toastLength: Toast.LENGTH_SHORT);
  //   }
  //   else{
  //     if(res.body== "true"){
  //       Fluttertoast.showToast(msg: "Account Created", toastLength: Toast.LENGTH_SHORT);
  //     }
  //     else{
  //       Fluttertoast.showToast(msg: "Error Occured", toastLength: Toast.LENGTH_SHORT);
  //
  //     }
  //   }
  // }
void loginUser() async{
  var url = "https://groovemusicnepal.000webhostapp.com/login/signin.php";
  var data = {
    "email": emailController.text,
    "password": passwordController.text,
  };
  http.Response res = await http.post(Uri.parse(url),
      body: data);

  if ((res.body)=="account is not used before"){
    Fluttertoast.showToast(msg: "This email is not verified", toastLength: Toast.LENGTH_SHORT);

  }
  else{
    if((res.body)=="false"){
      Fluttertoast.showToast(msg: "Incorrect Password", toastLength: Toast.LENGTH_SHORT);
      
      
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarPage(),),);
    }
  }





}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF161414),
                Color.fromRGBO(40, 96, 65, 6.0),
                Color(0xFF161414),
                // Colors.purple[900],
                // Colors.purple[800],
                // Colors.purple[400],
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            //Padding(padding: EdgeInsets.all(20),),
            children: <Widget>[
              SizedBox(height: 80.0),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60),

                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 80.0,),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(color: Color.fromRGBO(143, 148, 251, .4),
                                    blurRadius: 20.0,
                                    offset: Offset(0,8),),
                                ]
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or phone number",
                                hintStyle: TextStyle(color: Colors.grey[400]),),

                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(color: Color.fromRGBO(143, 148, 251, .4),
                                    blurRadius: 20.0,
                                    offset: Offset(0,8),),
                                ]
                            ),
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[400]),),
                            ),
                          ),
                          SizedBox(height:40),
                          SizedBox(
                            width: 100,
                            height:50,
                            child: TextButton(
                              child: Text("Login"),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                //backgroundColor: Colors.blueGrey[400],
                                backgroundColor: Colors.teal,
                              ),
                              onPressed: (){
                                loginUser();
                              }
                            ),
                          ),
                          // Container(
                          //   height: 50,
                          //   width: 225,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10),
                          //       gradient: LinearGradient(
                          //           colors: [
                          //             //Colors.purple[900],
                          //             Colors.green[900]!,
                          //             Colors.blueGrey[400]!,
                          //           ]
                          //       )
                          //   ),
                          //   child: Center(
                          //     child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          //   ),
                          // ),
                          
                          SizedBox(height: 30,),
                          Text("Forgot Password ?", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                          SizedBox(height:20),
                          Text("Or", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                          SizedBox(height:20),
                          SizedBox(
                            height: 40,
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUpPage() ),);

                            }, child: Text("Sign in with Google", style: TextStyle(fontWeight: FontWeight.bold),), style: TextButton.styleFrom(primary: Colors.grey),),
                          ),
                          //Text("Sign in With Google", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                        ],
                      ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
