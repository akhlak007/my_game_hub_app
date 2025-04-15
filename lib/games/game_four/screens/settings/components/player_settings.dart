import 'package:flutter/material.dart';

import '../../../models/settings.dart';
 // Make sure this path is correct

class PlayerSettings extends StatefulWidget {
  final int playerIndex;
  const PlayerSettings({super.key, required this.playerIndex});

  @override
  _PlayerSettingsState createState() => _PlayerSettingsState();
}

class _PlayerSettingsState extends State<PlayerSettings> {
  @override
  void initState() {
    super.initState();
    // Prepopulate the TextEditingControllers with current player names
    Settings.controllerP1.text = Settings.playerNames[0];
    Settings.controllerP2.text = Settings.playerNames[1];
  }

  @override
  void dispose() {
    super.dispose();
    // Update player names before disposing the widget
    Settings.updatePlayerNames();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Settings.playerRoleNames[widget.playerIndex], // Use widget.playerIndex to get the correct player role name
          style: const TextStyle(fontSize: 19.0),
        ),
        const SizedBox(width: 10.0),
        SizedBox(width: 150.0, height: 39.0, child: _buildTextField()),
      ],
    );
  }

  TextField _buildTextField() {
    return TextField(
      cursorColor: Colors.blue, // Replace with your desired cursor color (e.g., kXColor)
      maxLength: 10,
      textCapitalization: TextCapitalization.words,
      controller: Settings.textControllers[widget.playerIndex],
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200], // Replace with your desired background color (e.g., kContainerColor)
        focusColor: Colors.red,
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5.0)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
