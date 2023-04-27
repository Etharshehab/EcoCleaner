import 'package:ecocleaner_v2/widget/bottomnavbar.dart';
import 'package:flutter/material.dart';

import '../../widget/cover.dart';
import '../../widget/post_templet2.dart';
import '../../widget/searchfield.dart';
import 'community.dart';

class Cleaning extends StatelessWidget {
  const Cleaning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LayoutScreen()),
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
            imageUrl: 'assets/images/4.jpg',
            title: 'Cleaning',
          ),
          SizedBox(height: 10),
          SearchField(),
          SizedBox(height: 20),
          Post(
            name: "Amina ali",
            username: "@aminah",
            timeAgo: "2h",
            text:
                "We will be in this place on the fourth day at two o'clock to clean it, waiting for you all",
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
