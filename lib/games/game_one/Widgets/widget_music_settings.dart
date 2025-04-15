// ignore_for_file: prefer_const_constructors


import 'package:flappy_bird/games/game_one/Database/database.dart';
import 'package:flappy_bird/games/game_one/Global/constant.dart';
import 'package:flappy_bird/games/game_one/Global/functions.dart';
import 'package:flutter/material.dart';



class MusicSettings extends StatefulWidget {
  const MusicSettings({Key? key}) : super(key: key);

  @override
  State<MusicSettings> createState() => _MusicSettingsState();
}

class _MusicSettingsState extends State<MusicSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(margin: EdgeInsets.symmetric(vertical: 10),
              child: myText("Music",Colors.black,20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(onTap: () async {
                write("audio", true);
                await player.resume();
              },
                  child: Icon(Icons.music_note_rounded,size: 40,)),
              GestureDetector(onTap: () async {
                write("audio", false);
                await player.pause();
              },
                  child: Icon(Icons.music_off_rounded,size: 40)),
            ],
          ),
        ],
      ),
    );
  }
}
