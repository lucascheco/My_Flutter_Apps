import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(Kontac());

class Kontac extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kontac',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KontacHomePage(title: 'Kontac'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KontacHomePage extends StatefulWidget {
  KontacHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _KontacPageState createState() => _KontacPageState();
}

class _KontacPageState extends State<KontacHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Image.asset('images/Kontac3.png', fit: BoxFit.cover),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: mainColor,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
