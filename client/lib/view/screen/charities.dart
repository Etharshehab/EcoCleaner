import 'package:ecocleaner_v2/view/screen/community.dart';
import 'package:flutter/material.dart';

import '../../widget/bottomnavbar.dart';
import '../../widget/cover.dart';
import '../../widget/post_templet2.dart';
import '../../widget/searchfield.dart';

class Charities extends StatelessWidget {
  const Charities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LayoutScreen(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          CoverPhoto(
            imageUrl: 'assets/images/12.jpg',
            title: 'charities',
          ),
          SizedBox(height: 10),
          SearchField(),
          SizedBox(height: 20),
          Post(
            name: "Amina ali",
            username: "@aminah",
            timeAgo: "2h",
            text: "It is available to donate to the restoration of this street",
            imageUrl: "assets/images/3.jpg",
            likes: 10,
            comments: 5,
            shares: 3,
            profileimageUrl: 'assets/images/11.jpg',
          )
        ],
      ),
    );
  }
}
