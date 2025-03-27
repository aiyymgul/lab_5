import 'package:flutter/material.dart';
import 'package:lab_/first_screen.dart';
import 'package:lab_/second_screen.dart';
import 'package:lab_/third_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=> FirstScreen(),
        '/second':(context)=> SecondScreen(),
        '/third':(context)=> ThirdScreen(),
      },
    );
  }
}