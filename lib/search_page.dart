import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                        "Search",
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
                Card(
                  //color: Colors.pink,
                  margin: EdgeInsets.only(left: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.5),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    height: 52,
                    width: 380,
                    color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Artists, Albums or Songs',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Overpass',
                              fontSize: 15.0,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 210),
                    height: 50.0,
                    width: 200,
                    //color: Colors.grey,
                    child: Text(
                      'Artists, Songs or Album',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          fontFamily: 'Overpass',
                          decoration: TextDecoration.none),
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
