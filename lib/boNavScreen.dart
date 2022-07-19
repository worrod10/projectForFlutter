import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/LoginScreen.dart';
import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/ProfileScreen.dart';
import 'package:flutter_application_1/SearchDetilesScreen.dart';
import 'package:flutter_application_1/SearchScreen.dart';
import 'package:flutter_application_1/SignupScreen.dart';

class boNavScreen extends StatefulWidget {
  const boNavScreen({Key? key}) : super(key: key);

  @override
  State<boNavScreen> createState() => _boNavScreenState();
}

class _boNavScreenState extends State<boNavScreen> {
  List views = [
    NewScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[selected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 117, 101, 95),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selected,
        onTap: (valueselected) {
          setState(() {
            selected = valueselected;
          });
        },
      ),
    );
  }
}
