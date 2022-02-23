import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool signIn  = true;
  var firstNameController;
  var lastNameController;
  var emailController;
  var passwordController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
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



  void registerUser()async{
    var url = "https://groovemusicnepal.000webhostapp.com/login/signup.php";
    var data = {
      "firstName": firstNameController.text,
      "lastName": lastNameController.text,
      "email": emailController.text,
      "password": passwordController.text,
    };

    http.Response res = await http.post(Uri.parse(url),
        body: data);

    print("Sambhu, Vagya Neupane ko bhai");
    print(res.body);

    if (res.body == "account already exists"){
      Fluttertoast.showToast(msg: "Account already exists, please Proceed to Login", toastLength: Toast.LENGTH_SHORT);
    }
    else{
      if(res.body=="true"){
        Fluttertoast.showToast(msg: "Account Created", toastLength: Toast.LENGTH_SHORT);
      }
      else{
        Fluttertoast.showToast(msg: "Creation failed", toastLength: Toast.LENGTH_SHORT);
      }
    }
  }

  //  void registerUser()async{
  //   var url = "https://groovemusicnepal.000webhostapp.com/login/signup.php";
  //   var data = {
  //     "firstName": "janak",
  //     "lastName": "raj",
  //     "email": "janak@gmail.com",
  //     "password": "4",
  //   };
  //
  //   http.Response res = await http.post(Uri.parse(url),
  //    body: data);
  //
  //   print("Shambhu");
  //
  //   String responsedata = res.body.toString();
  //
  //   data = jsonDecode(responsedata);
  //
  //   print(data.toString());
  //   print("Saran");
  //
  //   if (jsonDecode(data.toString()) == "account already exists"){
  //     Fluttertoast.showToast(msg: "Account already exists, please Proceed to Login", toastLength: Toast.LENGTH_SHORT);
  //   }
  //   else{
  //     if(jsonDecode(data.toString())=="true"){
  //       Fluttertoast.showToast(msg: "Account Created", toastLength: Toast.LENGTH_SHORT);
  //     }
  //     else{
  //       Fluttertoast.showToast(msg: "creation failed", toastLength: Toast.LENGTH_SHORT);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomInset: true,
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
                    "Sign Up",
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
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60),

                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(40),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  reverse: true,
                  child: Column(
                    children: <Widget>[
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
                          controller: firstNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "First name",
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
                          controller: lastNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Last name",
                            hintStyle: TextStyle(color: Colors.grey[400]),),
                        ),
                      ),
                      SizedBox(height: 30.0,),
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
                            child: Text("Sign Up"),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              //backgroundColor: Colors.blueGrey[400],
                              backgroundColor: Colors.teal,
                            ),
                            onPressed: (){
                              registerUser();

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

                      //SizedBox(height: 30,),
                      //Text("Forgot Password ?", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                      //SizedBox(height:20),
                      //Text("Or", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                      //SizedBox(height:20),
                      // SizedBox(
                      //   height: 40,
                      //   child: TextButton(onPressed: (){
                      //
                      //   }, child: Text("Sign in with Google", style: TextStyle(fontWeight: FontWeight.bold),), style: TextButton.styleFrom(primary: Colors.grey),),
                      // ),
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
