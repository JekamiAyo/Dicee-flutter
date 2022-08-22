import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('DIcee'),
          ),
          body: DicePage(),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 1;
  int rightdicenumber = 1;

  void changeFace(){
    setState(() {
      leftdiceNumber = Random().nextInt(6)+ 1;
      rightdicenumber = Random().nextInt(6)+ 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFace();
              },
              child: Image(
                image: AssetImage("images/dice$leftdiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFace();
              },
              child: Image(
                image: AssetImage("images/dice$rightdicenumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
