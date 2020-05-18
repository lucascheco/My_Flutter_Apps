import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onegoal/oneGoal_MainPage.dart';
import 'PackPhrases.dart';

void main() => runApp(OneGoal());

class OneGoal extends StatefulWidget {
  @override
  _OneGoalState createState() => _OneGoalState();
}

class _OneGoalState extends State<OneGoal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Goal',
      home: OneGoal_MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
