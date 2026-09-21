import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Dice Game",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight(500),
              ),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // variable to hold the dice value
    var leftDiceNumber = 6;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    print('left button got pressed');
                  },
                  child: Image(
                    image: AssetImage("images/dice$leftDiceNumber.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    print("Right button got pressed");
                  },
                  child: Image(image: AssetImage("images/dice2.png")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
