import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'EusouRico',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eu sou rico'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image(
            image: AssetImage('images/playstore.png'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
