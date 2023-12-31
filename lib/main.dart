import 'package:flutter/material.dart';
import 'package:chatsui/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        hintColor: Color(0xFF158AEF),
      ),
      home: HomeScreen(),
    );
  }
}