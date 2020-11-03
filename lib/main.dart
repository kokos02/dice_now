import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xff1f6f8b),
      appBar: AppBar(
        title: Center(
          child: Text('Dice Now',
              style: TextStyle(fontSize: 28.0, fontFamily: 'trispace')),
        ),
        backgroundColor: Color(0xff1c2b2d),
      ),
      body: DiceNow(),
    ),
  ));
}

class DiceNow extends StatefulWidget {
  @override
  _DiceNowState createState() => _DiceNowState();
}

class _DiceNowState extends State<DiceNow> {
  int diceOne = 2;
  int diceTwo = 5;

  void RollDice() {
    setState(() {
      diceOne = Random().nextInt(6) + 1;
      diceTwo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 230,
              child: FlatButton(
                  padding: EdgeInsets.all(30.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Image.asset("images/dice$diceOne.png")),
            ),
            SizedBox(
              width: 230,
              child: FlatButton(
                  padding: EdgeInsets.all(30.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Image.asset("images/dice$diceTwo.png")),
            ),
            SizedBox(
                width: 250,
                height: 120,
                child: FlatButton(
                  color: Color(0xfff6f5f1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {
                    RollDice();
                  },
                  child: Text("Roll",
                      style: TextStyle(
                          color: Colors.redAccent[700],
                          fontSize: 30,
                          fontFamily: 'trispace')),
                ))
          ],
        ),
      ),
    );
  }
}
