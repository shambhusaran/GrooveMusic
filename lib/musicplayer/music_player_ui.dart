import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:groove_music/audio_brain.dart';



class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}



class _MusicPlayerState extends State<MusicPlayer> {
AudioPlayer? advancedPlayer;
  void initState(){
    super.initState();
    advancedPlayer = AudioPlayer();
  }


  // double sliderTime = 0;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
          child: Container(
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
            //color: Color(0xFFe4edfc),
            child: Column(
              children: <Widget>[
                Container(
                  //color: Color(0xFFe4edfc),
                  //color: Colors.grey,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.format_list_bulleted_sharp,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  height: deviceHeight / 1.9,
                  color: Color(0xFFe4edfc),
                  child: AlbumArt(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(

                  'Ek dui Teen',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  'Kushal Gurung X Shambhusaran',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),

                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10),
                  //height: 100,
                  //color: Color(0xFFe4edfc),
                  child: AudioBrain(advancedPlayer: advancedPlayer, musicPath: 'https://groovemusicnepal.000webhostapp.com/music/ek dui teen cover kushal final mix.mp3',),

                ),
              ],
            ),
          ),
        ),
      );

  }
}

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        padding: EdgeInsets.all(12),

        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/coldplayalbumart.jpg'),
              fit: BoxFit.fill),

        ),
      ),
    );
  }
}


