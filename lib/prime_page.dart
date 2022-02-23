import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrimePage extends StatefulWidget {
  @override
  _PrimePageState createState() => _PrimePageState();
}

class _PrimePageState extends State<PrimePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF161414),
            Color.fromRGBO(40, 96, 65, 6.0),
            Color(0xFF161414),
          ],
          begin: Alignment.topCenter,
          //end: FractionalOffset(0.3,0.3),
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
                //   Container(
                //     margin: EdgeInsets.only(left: 20),
                //     padding: EdgeInsets.all(20),
                //     color: Colors.grey,
                //     child: Text('Search', style: TextStyle(color: Colors.white.withOpacity(1.0),),
                //
                //   ),
                // ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white.withOpacity(1.0),
                          fontFamily: 'Overpass',
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset('Images/coldplayalbumart.jpg'),
                      height: 150,
                      width: 150,
                      color: Colors.grey,
                    ),
                  ],
                ),
                //SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.black45,
                        height: 50,
                        width: 391,
                        child: Center(
                          child: Text(
                            'Subscription',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Overpass', fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Container(
                    color: Colors.black45,
                    height: 50,
                    width: 391,
                    child: Center(
                      child: Text(
                        'Get Prime',
                        style: TextStyle(

                            color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'Overpass'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Container(
                    color: Colors.black45,
                    height: 50,
                    width: 391,
                    child: Center(
                      child: Text(
                        'Manage Account',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'Overpass'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Container(
                    color: Colors.black45,
                    height: 50,
                    width: 391,
                    child: Center(
                      child: Text(
                        'About',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500,fontFamily: 'Overpass'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                  child: Container(
                    color: Colors.black45,
                    height: 50,
                    width: 391,
                    child: Center(
                      child: Text(
                        'Support',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'Overpass'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
