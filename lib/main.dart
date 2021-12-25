import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.yellow,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void ChangeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
                top: 20,
              ),
              child: Text(
                'click me',
                style: TextStyle(
                  fontFamily: 'Sv',
                  fontSize: 60,
                  letterSpacing: 6,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(

              indent: 100,
              endIndent: 100,
              thickness: 4.0,
              color: Colors.white,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Expanded(
                      child: FlatButton(
                        onPressed: () {
                          ChangeDiceNumber();
                        },
                        child: Image.asset('images/dice$leftDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
                //  SizedBox(
                // width: 5,
                // ),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0, left: 5),
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Expanded(
                      child: FlatButton(
                        onPressed: () {
                          ChangeDiceNumber();
                        },
                        child: Image.asset('images/dice$rightDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
