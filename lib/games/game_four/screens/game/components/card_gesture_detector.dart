import 'package:anitex/anitex.dart';
import 'package:flappy_bird/games/game_four/constants.dart';
import 'package:flappy_bird/games/game_four/models/responsive_ui.dart';
import 'package:flutter/material.dart';


class CardGestureDetector extends StatelessWidget {
  final Function() onTapFunction;
  final String boxSide;
  final Color cardColor;

  const CardGestureDetector({required this.onTapFunction, required this.boxSide, required this.cardColor});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: onTapFunction,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              constraints: BoxConstraints.tightFor(
                width: ResponsiveUI.getBoxWidth(constraints.maxWidth, 10.0),
                height: ResponsiveUI.getBoxWidth(constraints.maxWidth, 10.0),
              ),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: AnimatedText(
                  boxSide,
                  duration: const Duration(milliseconds: 200),
                  style: TextStyle(
                    color: cardColor == kWinnerCardColor
                        ? kTextColor
                        : boxSide == 'X'
                            ? kXColor
                            : kOColor,
                    fontSize: constraints.maxWidth * 0.19,
                    fontWeight: FontWeight.bold,
                    fontFamily: boxSide == 'X' ? 'Carter' : 'Paytone',
                    height: boxSide == 'X' ? 1.4 : 2.0,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
