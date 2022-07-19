import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/LoginScreen.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  Color iconColors = Colors.brown;
  IconData ChangeIcon = Icons.save;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 136, 125, 121),
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.w200),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              child: Icon(
                Icons.login,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ),
        ],
      ),

      // AppBar Endd

      body: ListView(children: [
        Column(
          children: dataProdect
              .map((e) => GestureDetector(
                    child: Container(
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(30),
                      //   border: Border.all(
                      //     color: Color.fromARGB(255, 136, 125, 121),
                      //     width: 1,
                      //   ),
                      // ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 136, 125, 121)),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 260,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    e['imageUrl'],
                                    cacheHeight: 200,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    e["username"].toString(),
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 53, 40, 36),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "descrip : " + e["descrip"].toString(),
                                style: TextStyle(
                                    color: Color.fromARGB(255, 53, 40, 36),
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              // Row of Icons and Buttons
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (iconColors == Colors.brown) {
                                          iconColors = Colors.red;
                                        } else {
                                          iconColors = Colors.brown;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: iconColors,
                                    ),
                                  ),

                                  /// ------------ ///
                                  OutlinedButton.icon(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           ProfileScreen()),
                                        // );
                                      },
                                      label: Text(
                                        "Visit",
                                        style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      icon: Icon(
                                        Icons.arrow_downward,
                                        size: 11,
                                        color: Colors.brown,
                                      )),

                                  /// ------------ ///
                                  SizedBox(
                                    width: 10,
                                  ),

                                  /// ------------ ///
                                  OutlinedButton.icon(
                                      onPressed: () {
                                        if (ChangeIcon == Icons.save) {
                                          setState(() {
                                            ChangeIcon = Icons.done;
                                          });
                                        } else {
                                          setState(() {
                                            ChangeIcon = Icons.save;
                                          });
                                        }
                                      },
                                      label: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      icon: Icon(
                                        ChangeIcon,
                                        size: 11,
                                        color: Colors.brown,
                                      )),
                                  IconButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           ProjectsScreen()),
                                      // );
                                    },
                                    icon: Icon(
                                      Icons.more_horiz,
                                      color: Colors.brown,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ))
              .toList(),
        )
      ]),
    );
  }

  List dataProdect = [
    {
      "username": "@James1",
      "descrip":
          "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint ",
      "imageUrl":
          "https://studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg",
    },
    {
      "username": "@James2",
      "descrip":
          "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint",
      "imageUrl":
          "https://www.pngfind.com/pngs/m/317-3177131_636682202684372240-user-profile-photo-round-hd-png-download.png",
    },
    {
      "username": "@James3",
      "descrip":
          "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint  ",
      "imageUrl":
          "https://nelliemarketing.com/wp-content/uploads/2021/10/2-1-1024x1024.png",
    },
    {
      "username": "@James4",
      "descrip":
          "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint ",
      "imageUrl":
          "https://nelliemarketing.com/wp-content/uploads/2021/10/3-1-1024x1024.png",
    },
    {
      "username": "@James5",
      "descrip":
          "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint ",
      "imageUrl":
          "https://www.vhv.rs/dpng/d/473-4739617_transparent-face-profile-png-round-profile-picture-png.png",
    },
    {
      "username": "@James6",
      "descrip":
          "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint ",
      "imageUrl":
          "http://circle.group.shef.ac.uk/wp-content/uploads/2021/05/MB-CIRCLE-cropped.png",
    },
  ];
}
