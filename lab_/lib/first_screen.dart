import 'package:flutter/material.dart';
import 'package:lab_/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Home Screen'), // Жоғарғы тақырып атауын қойдым
    ),
    body: Column(
      children: [
        // Navigator.pushNamed арқылы жаңа экранға өтемін
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('pushNamed'),
        ),

        // pushReplacementNamed қолдандым, өйткені бұл алдыңғы экранды жауып, жаңасын ашады
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/second');
          },
          child: Text('pushReplacementNamed'),
        ),

        // pushAndRemoveUntil - барлық алдыңғы беттерді жауып, жаңа бетті ашады
        ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
              (route) => false, // Барлық алдыңғы беттерді жабу үшін false қойдым
            );
          },
          child: Text('pushAndRemoveUntil'),
        ),

        // push - жай ғана жаңа бетті ашады, бірақ алдыңғы бет жабылмайды
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('push'),
        ),

        // pushReplacement - жаңа бетті ашып, алдыңғы бетті жабады
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('pushReplacement'),
        ),
      ],
    ),
  );
}
  }
