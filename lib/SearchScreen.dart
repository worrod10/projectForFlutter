import 'package:flutter/material.dart';
import 'package:flutter_application_1/SearchDetilesScreen.dart';
import 'package:flutter_application_1/dataProdect.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 136, 125, 121),
        title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            )),
      ),
      body: ListView.builder(
        itemCount: PojectsList.length,
        itemBuilder: (context, index) {
          Pojects poject = PojectsList[index];
          return Card(
              child: ListTile(
            title: Text(
              poject.projectNAme,
              style: TextStyle(color: Color.fromARGB(255, 136, 125, 121)),
            ),
            subtitle: Text(poject.description),
            leading: Image.network(poject.imageUrl),
            trailing: Icon(Icons.arrow_forward_rounded),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SearchDetilesScreen(poject: poject)));
            },
          ));
        },
      ),
    );
  }
}
