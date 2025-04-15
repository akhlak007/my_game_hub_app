import 'package:flappy_bird/games/game_four/constants.dart';
import 'package:flutter/material.dart';


class MyScoreContainer extends StatelessWidget {
  final String text;
  const MyScoreContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: kContainerColor,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: kTextStyle.copyWith(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
