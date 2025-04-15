import 'package:flappy_bird/games/game_four/constants.dart';
import 'package:flutter/material.dart';


class MyMaterialButton extends StatelessWidget {
  final int index;
  final Icon icon;
  final Function()? onPressed;

  const MyMaterialButton({required this.index, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 24.0,
      shape: const CircleBorder(),
      color: kBackgroundColor,
      disabledColor: const Color(0xFF5d5e60),
      disabledTextColor: kTextColor,
      child: icon,
      onPressed: onPressed,
    );
  }
}
