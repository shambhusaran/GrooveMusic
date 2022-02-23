import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groove_music/library_page.dart';
import 'package:groove_music/prime_page.dart';
import 'package:groove_music/search_page.dart';
import 'package:groove_music/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  @override
  _BottomNavBarPageState createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: show(_currentIndex),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.grey[300],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.grey,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.home),
                //title: Text("Home", style: TextStyle(fontSize: 11),),
                label: "Home",

                backgroundColor: Colors.black,
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.search),
               //title: Text("Search", style: TextStyle(fontSize: 11),),
                label: "Search",
                backgroundColor: Colors.black,
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.my_library_music),
                //title: Text("Library", style: TextStyle(fontSize: 11),),

                label: "Library",
                backgroundColor: Colors.black,
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                //title: Text("Settings", style: TextStyle(fontSize: 11),),
                label: "Settings",
                backgroundColor: Colors.black,
              ),
            ],
            onTap: ((a){
              setState(() {
                _currentIndex = a;
                //show(index);
              });

            }),
          )),
    );

  }
}
Widget? show(int indexValue){
  switch(indexValue){
    case 0: return HomePage();

    case 1: return SearchPage();

    case 2: return LibraryPage();

    case 3: return PrimePage();
  }
}
