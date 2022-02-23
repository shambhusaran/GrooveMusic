import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
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
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Library',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white.withOpacity(1.0),
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 90,
                      color: Colors.black45,
                      margin: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Text(
                          'Playlists',
                          style: TextStyle(
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white.withOpacity(1.0),
                          ),
                        ),
                      ),

                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.all(Radius.circular(10),),
                      //
                      //   ),
                    ),
                    SizedBox(width: 18.0),
                    Container(
                      color: Colors.black45,
                      height: 40,
                      width: 125,
                      child: Center(
                        child: Text(
                          'Downloads',
                          style: TextStyle(
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(1.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.0),
                Container(
                  height: 70.0,
                  width: 390.0,
                  child: Row(
                    children: <Widget>[
                      //Image.asset('Images/albumart.jpg'),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        color: Colors.grey,
                        child: Icon(Icons.add, size: 50),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Create Playlist',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          //SizedBox(height: 8),
                          //Text('Artists Like: Artist A & many others', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.0),
                Container(
                  height: 70.0,
                  width: 390.0,
                  child: Row(
                    children: <Widget>[
                      Image.asset('Images/coldplayalbumart.jpg'),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Playlist A',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Artists Like: Artist A & many others',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.0),
                Container(
                  height: 70.0,
                  width: 390.0,
                  child: Row(
                    children: <Widget>[
                      Image.asset('Images/imaginedragonsalbumart.jpg'),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Playlist B',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Artists Like: Artist B & many others',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.0),
                Container(
                  height: 70.0,
                  width: 390.0,
                  child: Row(
                    children: <Widget>[
                      Image.asset('Images/jcolealbumart.jpg'),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Playlist C',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Artists Like: Artist C & many others',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
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
