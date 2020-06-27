import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: () => diceChange(),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: () => diceChange(),
            ),
          ),
        ],
      ),
    );
  }

  void diceChange() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }
}
