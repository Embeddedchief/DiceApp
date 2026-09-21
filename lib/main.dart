import 'package:flutter/material.dart';

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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () => ,
                  child: Image(image: AssetImage("images/dice1.png"))),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(image: AssetImage("images/dice2.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
