
import 'package:flappy_bird/games/game_four/screens/game/components/score_container.dart';
import 'package:flutter/material.dart';



import '../../../models/settings.dart';
import '../../../constants.dart';
import '../../../models/player.dart';


class MyProfileContainer extends StatelessWidget {
  final String symbol;
  final Color cardColor;
  final int playerIndex;

  const MyProfileContainer({required this.playerIndex, required this.symbol, required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(10.0),
            border: cardColor == kActiveCardColor || cardColor == kWinnerCardColor ? Border.all(color: Colors.white) : null,
          ),
          constraints: const BoxConstraints.tightFor(
            width: 110.0,
            height: 135.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Settings.playerNames[playerIndex], style: kTextStyle.copyWith(fontSize: 15.0)),
              ),
              Image.asset(
                'assets/images/avatar-${Settings.playerAvatars[playerIndex]}.png',
                width: 45.0,
              ),
              Text(
                symbol,
                style: kTextStyle.copyWith(
                  color: symbol == 'X' ? kXColor : kOColor,
                  fontFamily: symbol == 'X' ? 'Carter' : 'Paytone',
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
        MyScoreContainer('${Player.playerScores[playerIndex]}'),
      ],
    );
  }
}
