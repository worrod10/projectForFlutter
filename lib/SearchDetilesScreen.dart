import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/dataProdect.dart';

class SearchDetilesScreen extends StatelessWidget {
  const SearchDetilesScreen({Key? key, required this.poject}) : super(key: key);
  final Pojects poject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 136, 125, 121),
          title: Text(
            poject.projectNAme,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      poject.imageUrl,
                      height: 190,
                      width: 190,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 235, 234),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        poject.description,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 135, 120, 115)),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: .3, color: Colors.brown),
                      ),
                    ),
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Color.fromARGB(255, 136, 125, 121),
                            ),
                            Icon(Icons.star,
                                size: 20,
                                color: Color.fromARGB(255, 136, 125, 121)),
                            Icon(Icons.star,
                                size: 20,
                                color: Color.fromARGB(255, 136, 125, 121)),
                            Icon(Icons.star_border_outlined,
                                size: 20,
                                color: Color.fromARGB(255, 136, 125, 121)),
                            Icon(Icons.star_border_outlined,
                                size: 20,
                                color: Color.fromARGB(255, 136, 125, 121)),
                            SizedBox(
                              width: 200,
                            ),
                            Icon(Icons.more_horiz,
                                size: 20,
                                color: Color.fromARGB(255, 136, 125, 121))
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "97 Ratings",
                          style: TextStyle(
                              color: Color.fromARGB(255, 136, 125, 121),
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  OutlinedButton.icon(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(330, 40))),
                      onPressed: () {},
                      icon: Icon(
                        Icons.code_outlined,
                        color: Colors.brown,
                      ),
                      label: Text("TRY YOUR FIRST CODE",
                          style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.w300))),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            width: .3,
                            color: Color.fromARGB(255, 136, 125, 121)),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text("Requirements: ",
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Column(
                    children: [
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam augue lorem, pulvinar in arcu et, dictum rhoncus orci. Nullam sit amet molestie mauris, vitae posuere mi.",
                          style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.w300)),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Row(
                          children: [
                            Text(
                              'Version History',
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    backgroundColor:
                                        Color.fromARGB(255, 249, 230, 230)),
                              ),
                              onPressed: () {},
                              child: Text(
                                'See All',
                                style: TextStyle(
                                    color: Colors.brown, fontSize: 13),
                              ),
                            ),
                            Icon(Icons.arrow_forward_rounded,
                                size: 10, color: Colors.brown),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 239, 235, 234),
                        ),
                        width: 350,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Review: ",
                                      style: TextStyle(
                                          color: Colors.brown,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("Lorem ipsum dolor sit amet,",
                                      style: TextStyle(
                                          color: Colors.brown,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Color.fromARGB(255, 136, 125, 121),
                                  ),
                                  Icon(Icons.star,
                                      size: 18,
                                      color:
                                          Color.fromARGB(255, 136, 125, 121)),
                                  Icon(Icons.star,
                                      size: 18,
                                      color:
                                          Color.fromARGB(255, 136, 125, 121)),
                                  Icon(Icons.star,
                                      size: 18,
                                      color:
                                          Color.fromARGB(255, 136, 125, 121)),
                                  Icon(Icons.star,
                                      size: 18,
                                      color:
                                          Color.fromARGB(255, 136, 125, 121)),
                                  Text(" 19 May, @James",
                                      style: TextStyle(
                                          color: Colors.brown,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
