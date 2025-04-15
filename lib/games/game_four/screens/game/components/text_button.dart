import 'package:flappy_bird/games/game_four/constants.dart';
import 'package:flutter/material.dart';


class MyTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const MyTextButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: kTextColor, padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 13.0),
        elevation: 2.0,
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Paytone',
        ),
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
