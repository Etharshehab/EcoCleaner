import 'package:flutter/material.dart';
import '../../widget/bottomnavbar.dart';
import '../../widget/cover.dart';
import '../../widget/post_templet2.dart';
import '../../widget/searchfield.dart';
import 'community.dart';

class Painting extends StatelessWidget {
  const Painting({super.key});

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
            imageUrl: 'assets/images/10.jpg',
            title: 'painting',
          ),
          SizedBox(height: 10),
          SearchField(),
          SizedBox(height: 20),
          Post(
            name: "Ahmed ali",
            username: "@aminah",
            timeAgo: "2h",
            text:
                "We've finished cleaning up this place and now it's our turn to paint",
            imageUrl: "assets/images/3.jpg",
            likes: 10,
            comments: 5,
            shares: 3,
            profileimageUrl: 'assets/images/1.jpg',
          )
        ],
      ),
    );
  }
}
