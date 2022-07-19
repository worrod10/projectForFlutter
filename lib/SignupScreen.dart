import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/MAinScreen.dart';
import 'package:flutter_application_1/boNavScreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign up", style: TextStyle(fontWeight: FontWeight.w200)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 136, 125, 121),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
              // Intro Logo
              Container(
                  padding: EdgeInsets.all(40),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.brown,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "We Encourage You To Signup with Us! ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w200),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.brown,
                            ),
                            Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.brown,
                            ),
                            Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.brown,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 170),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: Colors.brown,
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: Colors.brown,
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: Colors.brown,
                                ),
                                Text("!!",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              // Lable With TextButton to Enter info
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 19),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Create a password',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm your password',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Choese a Unique username',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Row For buttons
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: OutlinedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => boNavScreen()),
                            );
                          },
                          label: Text(
                            "Create New Account",
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
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
