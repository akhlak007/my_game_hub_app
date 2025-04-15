import 'package:flutter/material.dart';
import 'package:flappy_bird/games/game_four/constants.dart';
import 'package:flutter/cupertino.dart';
// Alias the official audioplayers package if needed:
import 'package:audioplayers/audioplayers.dart' as OfficialAudio;
// Import your custom AudioPlayer using an alias to avoid conflicts:
import 'package:flappy_bird/games/game_four/utilities/audio_player.dart' as myAudio;

import '../../../models/settings.dart';

class VolumeSettings extends StatefulWidget {
  @override
  _VolumeSettingsState createState() => _VolumeSettingsState();
}

class _VolumeSettingsState extends State<VolumeSettings> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Sound', style: TextStyle(fontSize: 19.0)),
        const SizedBox(width: 5.0),
        _buildSwitchButtons(0),
        const SizedBox(width: 10.0),
        const Text('Music', style: TextStyle(fontSize: 19.0)),
        const SizedBox(width: 5.0),
        _buildSwitchButtons(1),
      ],
    );
  }

  _buildSwitchButtons(int index) {
    return Transform.scale(
      scale: 0.85,
      child: Switch.adaptive(
        activeColor: kBackgroundColor,
        inactiveTrackColor: kContainerColor,
        inactiveThumbColor: kTextColor,
        value: Settings.audioValues[index],
        onChanged: (v) => setState(() {
          Settings.audioValues[index] = v;
          if (index == 1) _musicHandler();
        }),
      ),
    );
  }

  void _musicHandler() {
    if (Settings.audioValues[1]) {
      // Use the custom AudioPlayer from our alias 'myAudio'
      myAudio.AudioPlayer.playMusic();
    } else {
      myAudio.AudioPlayer.toggleLoop();
      myAudio.AudioPlayer.stopMusic();
    }
  }
}
