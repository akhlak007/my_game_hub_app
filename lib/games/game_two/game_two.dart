import 'package:flutter/material.dart';
import 'initial_screen.dart';

/// This widget now serves as the entry point for Game Two,
/// which can be navigated to from the hub app.
class GameTwoApp extends StatelessWidget {
  const GameTwoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Ninja clone by AKHLAK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InitialScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
