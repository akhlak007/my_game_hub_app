import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyGameHubApp());
}

class MyGameHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Game Hub',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
