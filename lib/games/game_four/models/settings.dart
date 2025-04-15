import 'package:flutter/material.dart';

class Settings {
  static List<bool> audioValues = [true, true];
  static List<String> playerRoleNames = ['Your Name', 'Opponent'];
  static List<String> playerNames = ['Player 1', 'Player 2'];
  static List<int> playerAvatars = [0, 0]; // Store avatar IDs (use ints if you are using indexes)
  static List<bool> p1AvatarList = [true, false, false, false];
  static List<bool> p2AvatarList = [true, false, false, false];

  static List<int> scores = [3, 5];
  static List<String> scoreTitles = ['Win Score ', 'Draw Score'];

  // TextEditingControllers for player names
  static final TextEditingController controllerP1 = TextEditingController();
  static final TextEditingController controllerP2 = TextEditingController();
  static List<TextEditingController> textControllers = [controllerP1, controllerP2];

  // Get player names from the text fields
  static List<String> getTextFieldValues() {
    return [controllerP1.text, controllerP2.text];
  }

  // Update player names from the text fields
  static void updatePlayerNames() {
    playerNames[0] = controllerP1.text;
    playerNames[1] = controllerP2.text;
  }

  // Update avatar selection for player 1 (or 2)
  static void updatePlayerAvatars(int playerIndex, int avatarIndex) {
    if (playerIndex == 0) {
      playerAvatars[0] = avatarIndex;
    } else if (playerIndex == 1) {
      playerAvatars[1] = avatarIndex;
    }
  }

  // Update score for players
  static void updateScores(int playerIndex, int score) {
    if (playerIndex == 0) {
      scores[0] = score;
    } else if (playerIndex == 1) {
      scores[1] = score;
    }
  }
}
