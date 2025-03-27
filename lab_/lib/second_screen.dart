import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State <SecondScreen> createState() => SecondScreenState();
}

class SecondScreenState extends State <SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen')),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                // Pop - ашылған бетті жауып, алдынғы экранға қайтады
                Navigator.pop(context);       
              },
              //Pop кнопкасын басқанда, бірінші экран қайта көрінеді
              child: Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                // Екінші экранды жауып, орнына үшінші экранды ашады
              Navigator.popAndPushNamed(context, '/third'); 
            }, 
              // PopAndPushNamed кнопкасын басқанда, үшінші экран ашылады 
            child: Text('PopAndPushNamed'),
            ),
          ],
        ),
    );
  }
}