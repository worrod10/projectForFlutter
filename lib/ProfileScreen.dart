import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 250, top: 20, bottom: 20),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'http://circle.group.shef.ac.uk/wp-content/uploads/2021/05/MB-CIRCLE-cropped.png'),
                        radius: 40,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Antony Shas",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 102, 99, 99),
                                    fontSize: 20,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600)),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 14),
                                child: Text("Show Profile",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600)),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text("Account Settings",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_pin_rounded,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Personal information",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Notifications",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.wb_sunny_outlined,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Theme",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.privacy_tip_outlined,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Privacy",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text("Support",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help_outline,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Get help",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Call for support",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Rate the app",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 20,
                        color: Colors.brown,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Log out",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900))
                    ],
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
