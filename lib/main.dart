import 'package:flutter/material.dart';
import 'package:my_fyp/bottom_bar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'my app',
      theme: ThemeData(),
      routes: {
        "/": (context) => const BottomNavBar(),
        // "/home":(context) => 
      },
    );
  }
}
