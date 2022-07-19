import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/MAinScreen.dart';
import 'package:flutter_application_1/SignupScreen.dart';
import 'package:flutter_application_1/boNavScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 136, 125, 121),
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewScreen()),
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
              // Intro Logo
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Image.network(
                  'https://data.whicdn.com/images/346235339/original.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              // Lable With TextButton to Enter info
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your username',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your password',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Row For buttons
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: OutlinedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => boNavScreen()),
                            );
                          },
                          label: Text(
                            "Login",
                            style: TextStyle(color: Colors.brown),
                          ),
                          icon: Icon(
                            Icons.login_rounded,
                            size: 18,
                            color: Colors.brown,
                          ))),
                  Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: OutlinedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()),
                            );
                          },
                          label: Text(
                            "Create New Account",
                            style: TextStyle(color: Colors.brown),
                          ),
                          icon: Icon(
                            Icons.manage_accounts_rounded,
                            size: 18,
                            color: Colors.brown,
                          ))),
                ],
              )
            ],
          ),
        ));
  }
}
