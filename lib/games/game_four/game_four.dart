
import 'package:flappy_bird/games/game_four/models/audio_resume.dart';
import 'package:flappy_bird/games/game_four/utilities/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameFour extends StatelessWidget {
  const GameFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:  SplashScreen(),
    );
  }
}

// Initialize game and handle system events
void initializeGameFour() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  
  // Use null-aware access safely (updated for Dart 3+)
  final handler = Handler();
  WidgetsBinding.instance.addObserver(handler);
}
