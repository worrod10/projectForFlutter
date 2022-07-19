import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: usersList.length,
            itemBuilder: (context, index) {
              users user = usersList[index];
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color.fromARGB(255, 136, 125, 121),
                    width: 1,
                  ),
                ),
                child: Column(children: [
                  Image.network(
                    user.imageUrl,
                    height: 50,
                    width: 50,
                  ),
                  Text(user.userName),
                  Text(user.description),
                ]),
              );
            }),
      ),
    );
  }
}

class users {
  String userName;
  String description;
  String imageUrl;

  users({
    required this.userName,
    required this.description,
    required this.imageUrl,
  });
}

List<users> usersList = [
  users(
    userName: "@James1",
    description:
        "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae",
    imageUrl:
        "https://studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg",
  ),
  users(
    userName: "@James2",
    description:
        "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae",
    imageUrl:
        "https://www.pngfind.com/pngs/m/317-3177131_636682202684372240-user-profile-photo-round-hd-png-download.png",
  ),
  users(
    userName: "@James3",
    description:
        "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae",
    imageUrl:
        "https://nelliemarketing.com/wp-content/uploads/2021/10/2-1-1024x1024.png",
  ),
  users(
    userName: "@James4",
    description:
        "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae",
    imageUrl:
        "https://nelliemarketing.com/wp-content/uploads/2021/10/3-1-1024x1024.png",
  ),
  users(
    userName: "@James5",
    description:
        "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae",
    imageUrl:
        "https://www.vhv.rs/dpng/d/473-4739617_transparent-face-profile-png-round-profile-picture-png.png",
  ),
  users(
    userName: "@James6",
    description:
        "dignissimos aperiam dolorem qui eum\nfacilis quibusdam animi sint suscipit qui sint possimus cum\nquaerat magni maiores excepturi\nipsam ut commodi dolor voluptatum modi aut vitae",
    imageUrl:
        "http://circle.group.shef.ac.uk/wp-content/uploads/2021/05/MB-CIRCLE-cropped.png",
  ),
];
