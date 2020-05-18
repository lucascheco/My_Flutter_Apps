import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onegoal/oneGoal_MainPage.dart';
import 'PackPhrases.dart';

PackPhrases myNewPack = PackPhrases();

class OneGoal_MainPage extends StatefulWidget {
  @override
  _OneGoal_MainPageState createState() => _OneGoal_MainPageState();
}

class _OneGoal_MainPageState extends State<OneGoal_MainPage> {
  @override
  Widget build(BuildContext context) {
    if (myNewPack.searchPhrase('adaed')) {
      print("Frase está na lista.\n");
    } else {
      print("Frase não está na lista.\n");
    }
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "images/FundoEstrelado.png",
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Center(
                child: Text(
                  "OneGoal",
                ),
              ),
              elevation: 0.0,
              backgroundColor: Colors.black.withOpacity(0.1),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/FundoEstrelado.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    title: Text('Profile'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black.withOpacity(0.1),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Calendar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  activeIcon: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.timer,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Timer',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  activeIcon: Icon(
                    Icons.timer,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      myNewPack.getPhrase(),
                      textScaleFactor: 4.0,
                      style: TextStyle(
                        color: Colors.white,
                        //fontSize: 90.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'AmaticSC',
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    mini: true,
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        myNewPack.nextPhrase();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
