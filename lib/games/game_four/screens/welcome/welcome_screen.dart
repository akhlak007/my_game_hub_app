import 'package:audioplayers/audioplayers.dart' as officialAudio; // Aliased official package
import 'package:flappy_bird/games/game_four/constants.dart';
import 'package:flappy_bird/games/game_four/models/responsive_ui.dart';
import 'package:flappy_bird/games/game_four/screens/welcome/components/alert_dialog.dart';
import 'package:flappy_bird/games/game_four/screens/welcome/components/scaffold_body.dart';
import 'package:flutter/material.dart';

import '../../models/settings.dart';
// Import the custom AudioPlayer (with playMusic, etc.)
import 'package:flappy_bird/games/game_four/utilities/audio_player.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    if (Settings.audioValues[1]) AudioPlayer.playMusic();
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveUI.getDeviceHeight(context);
    ResponsiveUI.getDeviceWidth(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: MyScaffoldBody(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      title: Text(
        'TIC TAC TOE',
        textAlign: TextAlign.center,
        style: kTextStyle.copyWith(
          fontSize: ResponsiveUI.getFontSize(33.0),
        ),
      ),
      leading: IconButton(
        color: kTextColor,
        iconSize: ResponsiveUI.getFontSize(35.0),
        padding: const EdgeInsets.all(0.0),
        onPressed: () => MyAlertDialog.buildAlert(context),
        icon: const Icon(Icons.menu),
      ),
    );
  }
}
