import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(Magic8BallApp());
}

class Magic8BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Magic8BallScreen(),
    );
  }
}

class Magic8BallScreen extends StatefulWidget {
  @override
  _Magic8BallScreenState createState() => _Magic8BallScreenState();
}

class _Magic8BallScreenState extends State<Magic8BallScreen> {
  final List<String> ballImages = [
    '../images/ball1.png',
    '../images/ball2.png',
    '../images/ball3.png',
    '../images/ball4.png',
  ];
  String currentBallImage = '../images/ball1.png';

  void changeBallImage() {
    setState(() {
      currentBallImage = ballImages[Random().nextInt(ballImages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: GestureDetector(
          onTap: changeBallImage,
          child: Image.asset(currentBallImage, width: 250, height: 250),
        ),
      ),
    );
  }
}
