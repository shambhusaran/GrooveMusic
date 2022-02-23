import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int index = 0;
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
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  //height: 250,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Text(
                              'Recently Played',
                              style: TextStyle(
                                fontFamily: 'Overpass',
                                color: Colors.white.withOpacity(1),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Container(
                        //color: Colors.grey,
                        //margin: EdgeInsets.fromLTRB(4, 10, 0, 10),
                        height: 180.0,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(
                                  height: 130.0,
                                  width: 150.0,
                                  child: Image.asset('Images/imaginedragonsalbumart.jpg'),
                                ),
                                Padding(padding: EdgeInsets.all(3),),
                                Text('Song A', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                                 Text('Artist I', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),),
                                
                                
                              ],
                              
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Text(
                              'New Release',
                              style: TextStyle(
                                fontFamily: 'Overpass',
                                color: Colors.white.withOpacity(1),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Container(
                        //color: Colors.grey,
                        //margin: EdgeInsets.fromLTRB(4, 10, 0, 10),
                        height: 210.0,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(
                                  height: 170.0,
                                  width: 190.0,
                                  child: Image.asset('Images/coldplayalbumart.jpg'),
                                ),
                                Text('Song A', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                                Text('Artist I', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),),

                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(12, 20, 0, 0),
                            child: Text(
                              'Trending Songs',
                              style: TextStyle(
                                fontFamily: 'Overpass',
                                color: Colors.white.withOpacity(1),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),

                      Container(

                        //color: Colors.grey,
                        //margin: EdgeInsets.fromLTRB(4, 10, 0, 10),
                        height: 185.0,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('#1 Trending', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),),
                                SizedBox(
                                  height: 130.0,
                                  width: 150.0,
                                  child: Image.asset('Images/jcolealbumart.jpg'),
                                ),
                                Text('Song A', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                                Text('Artist I', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),),
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),

                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(12, 20, 0, 0),
                            child: Text(
                              'Latest Album Releases',
                              style: TextStyle(
                                fontFamily: 'Overpass',
                                color: Colors.white.withOpacity(1),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        //color: Colors.grey,
                        //margin: EdgeInsets.fromLTRB(4, 10, 0, 10),
                        height: 185.0,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('Album A', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),),
                                SizedBox(
                                  height: 130.0,
                                  width: 150.0,
                                  child: Image.asset('Images/albumart.jpg'),
                                ),
                                Text('Song A', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                                Text('Artist I', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),),
                              ],
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
