// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/game_model.dart';
import 'models/tower.dart';
import 'view_models/game_view_model.dart';
import 'views/game_over_view.dart';
import 'views/game_view.dart';
import 'views/level_select_view.dart';

class GameThreeApp extends StatelessWidget {
  const GameThreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameViewModel(
        GameModel(
          towers: [
            Tower('A', [1, 2]), // Starting level with 2 disks
            Tower('B', []),
            Tower('C', []),
          ],
          currentLevel: 2,
          moveCount: 0,
          maxLevel: 10,
          random: Random(),
          unlockedLevels: 2,
          shuffleCount: 0,
          isShuffling: false,
          isShowLevelComplete: false,
        ),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tower of Hanoi',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/game',
        routes: {
          '/game': (context) => GameView(),
          '/level_select': (context) => LevelSelectView(),
          '/game_over': (context) => GameOverView(),
        },
      ),
    );
  }
}
