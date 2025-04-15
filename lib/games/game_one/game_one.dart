// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_local_variable


import 'package:flappy_bird/games/game_one/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Layouts/Pages/page_start_screen.dart';
import 'Resources/strings.dart';

/// This widget now acts as the entry point for Game One,
/// which can be used inside the hub.
class GameOneApp extends StatefulWidget {
  const GameOneApp({super.key});

  @override
  _GameOneAppState createState() => _GameOneAppState();
}

class _GameOneAppState extends State<GameOneApp> {
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _initializeHive();
  }

  Future<void> _initializeHive() async {
    await Hive.initFlutter();
    await Hive.openBox('user');
    setState(() {
      _initialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Optionally, show a loading spinner until initialization is complete.
    if (!_initialized) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // Set the preferred orientations.
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      home: StartScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: Str.home,
      onGenerateRoute: AppRoute().generateRoute,
    );
  }
}
