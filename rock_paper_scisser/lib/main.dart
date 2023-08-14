import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int bottom = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent[700],
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Rock   Paper   Scisser'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'images/$top.png',
                height: 100,
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      primary: Colors.deepOrange,
                      minimumSize: Size(120, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        top = Random().nextInt(3) + 1;
                        bottom = Random().nextInt(3) + 1;
                      });
                    },
                    child: Text(
                      'Click',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'images/$bottom.png',
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
