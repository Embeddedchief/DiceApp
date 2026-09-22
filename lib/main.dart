//this import material dart library
import 'package:flutter/material.dart';

//this allows us to use random numbers
import 'dart:math';

//The app runs from here
void main() {
  return runApp(
    MaterialApp(
      //this turns off the debugbanner from the screen
      debugShowCheckedModeBanner: false,

      //this is the parent widget that holds everything in the screen
      home: Scaffold(
        //this sets the background of the app
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

//The statefull widget
class DicePage extends StatefulWidget {
  const new({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // variable to hold the dice value
  int leftDiceNumber = 0;
  int rightDiceNumber = 0;
  @override
  Widget build(BuildContext context) {
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
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
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
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage("images/dice$rightDiceNumber.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
