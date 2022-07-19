import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginScreen.dart';
import 'package:flutter_application_1/PostScreen.dart';
import 'package:flutter_application_1/SignupScreen.dart';

import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/boNavScreen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: boNavScreen(),
    );
  }
}
