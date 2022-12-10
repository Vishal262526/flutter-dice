import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("Dicee"),
        ),
        body: DicePage(),
      ),
    );
    ;
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 5;
  int rightDiceNum = 6;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  leftDiceNum = 4;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice$leftDiceNum.png"),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  rightDiceNum = 5;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset("images/dice$rightDiceNum.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
