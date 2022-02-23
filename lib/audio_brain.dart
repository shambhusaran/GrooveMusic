
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:http/http.dart';


class AudioBrain extends StatefulWidget {
  final AudioPlayer? advancedPlayer;
  final String? musicPath;

  AudioBrain({required this.advancedPlayer, required this.musicPath});


  @override
  _AudioBrainState createState() => _AudioBrainState();
}

class _AudioBrainState extends State<AudioBrain> {

  Duration _duration = new Duration();
  Duration _position = new Duration();

   //final String path = 'https://groovemusicnepal.000webhostapp.com/music/ek dui teen cover kushal final mix.mp3';

 // String path = this.widget.musicPath!;
  //final String path = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';
  bool isPlaying = false;
  bool isPaused = false;
  bool isLooped = false;
  //Color iconPressedColor = Colors.black;
  Color loopIconColor = Colors.white;

  List <IconData> _icons = [
    Icons.play_circle_fill,
    Icons.pause_circle_filled,
  ];


  @override
  void initState(){
    super.initState();

    this.widget.advancedPlayer!.onDurationChanged.listen((d){
      setState((){
        _duration = d; 

      });
    });


    this.widget.advancedPlayer!.onAudioPositionChanged.listen((p){
      setState(() {
        _position = p;

      });
    });

   // this.widget.advancedPlayer!.setUrl(path);
    this.widget.advancedPlayer!.setUrl(this.widget.musicPath!);

    this.widget.advancedPlayer!.onPlayerCompletion.listen((event) {
      setState(() {

        isPlaying = false;
        isLooped = false;


      });
    }

    );

  }

  Widget playBTN(){
    return ButtonOfIcons(
          icon: isPlaying==false? _icons[0]: _icons[1],
          iconColor: Colors.white,
          size: 55,
          onPressed: () {
              if(isPlaying == false){
                this.widget.advancedPlayer!.play(this.widget.musicPath!);

                setState(() {
                  isPlaying = true;
                });

              }

              else if(isPlaying== true){
                this.widget.advancedPlayer!.pause();
                setState(() {
                  isPlaying = false;
                });
              }

          },
        );
  }
 // double _sliderTime = 0;


  void changeToMilliseconds(int millisecond){
          Duration newDuration = Duration(milliseconds: millisecond);
          this.widget.advancedPlayer!.seek(newDuration);


  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Container(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
              thumbColor: Color(0xFF001852),
              // activeTrackColor: Color(0xff001852).withOpacity(0.8),
              activeTrackColor:  Colors.white.withOpacity(0.8),
              //inactiveTrackColor: Color(0xFF001852).withOpacity(0.1),

              inactiveTrackColor: Colors.grey.withOpacity(0.5),
            ),
            child: Slider(


              value: _position.inMilliseconds.toDouble(),

              min : 0.0,
              max : _duration.inMilliseconds.toDouble(),
              onChanged: (double value) {
                setState(() {
                  changeToMilliseconds(value.toInt());
                  value = value;
                  print(value);
                  print (_position.inMilliseconds.toDouble());
                });

                //print('Time)');
              },
              // min: 0,
              // max: 5,
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16 ),
              child: Text(_position.toString().substring(2, 7), style: TextStyle(fontSize: 16, color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(_duration.toString().substring(2, 7),style: TextStyle(fontSize: 16, color: Colors.white),),
            ),
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            loopButton(),
            previousButton(),

            playBTN(),
            nextButton(),
            shuffleButton(),

            
          ],
        )
        
      ],
    );
  }


  Widget previousButton(){
    return  ButtonOfIcons(
      icon: Icons.skip_previous_sharp,
      iconColor: Colors.white,
      size: 45,
      onPressed: () {},
    );
  }

  Widget nextButton(){
    return
      ButtonOfIcons(
        icon: Icons.skip_next,
        iconColor: Colors.white,
        size: 45,
        onPressed: () {},
      );
  }

  Widget loopButton(){
    return
      ButtonOfIcons(
        icon: Icons.repeat,
        iconColor: loopIconColor,
        size: 30,
        onPressed: () {

          if (isLooped == false){
            this.widget.advancedPlayer!.setReleaseMode(ReleaseMode.LOOP);


            setState(() {
              isLooped = true;
              loopIconColor = Colors.black;

            });



          }

          else if(isLooped == true){
            this.widget.advancedPlayer!.setReleaseMode(ReleaseMode.RELEASE);



            setState(() {
              isLooped = false;
              loopIconColor = Colors.white;
            });

          }


        },
      );
  }

  Widget shuffleButton() {
    return
      ButtonOfIcons(
        icon: Icons.shuffle_outlined,
        iconColor: Colors.white,
        size: 30,
        onPressed: () {},
      );
  }

}



class ButtonOfIcons extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final VoidCallback onPressed;

  ButtonOfIcons(
      { required this.icon,
        required this.size,
        required this.iconColor,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0),
      icon: Icon(
        icon,
        size: size,
        color: iconColor,
      ),
      onPressed: onPressed,
    );
  }
}





