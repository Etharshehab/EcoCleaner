import 'package:flutter/material.dart';
import 'package:ecocleaner_v2/widget/post_templet.dart';
import 'package:ecocleaner_v2/widget/searhfiled.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecocleaner'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 15),
            SearchField(),
            SizedBox(height: 25),
            PostTemplate(
              image1Url: 'assets/images/2.jpg',
              image2Url: 'assets/images/3.jpg',
              profileImageUrl: 'assets/images/1.jpg',
              text:
                  'While i walked in Zamalek, i saw some garbage which make the street looks bad and people can’t walk in it, so if anyone can help in cleaning it this will be awesome.',
              time: ' 2 hours ago',
              username: ' Ahmed Ali',
            ),
            PostTemplate(
                profileImageUrl: 'assets/images/11.jpg',
                username: "amina ail",
                time: " 2 hours ago",
                text:
                    'While i walked in New Cairo, there were much rubbish and the street was needed to painted and cleaned.',
                image1Url: 'assets/images/6.jpg',
                image2Url: 'assets/images/7.jpg'),
          ],
        ),
      ),
    );
  }
}
