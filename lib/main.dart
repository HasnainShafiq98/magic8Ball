import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: EightballApp(),
        ),
      ),
    );

class EightballApp extends StatefulWidget {
  @override
  _8ballAppState createState() => _8ballAppState();
}

class _8ballAppState extends State<EightballApp> {
  int eightBallNumber = 1;
  void change() {
    setState(() {
      eightBallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/ball$eightBallNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
