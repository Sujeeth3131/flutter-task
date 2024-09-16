import 'package:flutter/material.dart';
import 'package:flutter_task_new/components/signin_screen.dart';

import 'home_screen.dart';
import 'inbox_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    HomeScreen(),
    InboxScreen(title: 'winner',),
    DrawerExample ()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30),label: "text" ),
            BottomNavigationBarItem(icon: Icon(Icons.mail, size: 30),label: "text" ),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle, size: 30),label: "text"),
          ],
          selectedItemColor: Colors.green,
          elevation: 5.0,
          unselectedItemColor: Colors.green[900],
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
        )
    );
  }
}
