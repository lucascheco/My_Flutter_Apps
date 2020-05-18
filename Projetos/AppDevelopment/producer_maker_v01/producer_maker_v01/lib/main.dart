import 'package:flutter/material.dart';

void main() => runApp(App_PM());

class App_PM extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Producer Maker',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Producer Maker'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Learn'),
            activeIcon: Icon(
              Icons.book,
              color: Colors.lightBlue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            title: Text('Social'),
            activeIcon: Icon(
              Icons.public,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: Icon(Icons.settings),
        actions: <Widget>[
          Icon(Icons.account_circle),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image(
                  image: AssetImage('assets/Producer_Maker_Logo0202.png')),
            ),
          ],
        ),
      ),
    );
  }
}
