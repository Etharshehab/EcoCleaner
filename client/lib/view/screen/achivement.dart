import '/widget/custom_appbar.dart';
import 'package:ecocleaner_v2/widget/custom_achivementcontainer.dart';
import 'package:ecocleaner_v2/config/my_text.dart';
import 'package:flutter/material.dart';

class Avhivement extends StatefulWidget {
  const Avhivement({Key? key}) : super(key: key);

  @override
  _AchievementsViewState createState() => _AchievementsViewState();
}

class _AchievementsViewState extends State<Avhivement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              MyText(
                data: "Achievements",
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                color: Colors.grey[200],
                height: 500,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomAchievementContainer(
                        image: images[index],
                        service: services[index],
                        address: addresses[index],
                        date: dates[index],
                        name: names[index],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List images = [
  "assets/images/6.jpg",
  "assets/images/7.jpg",
  "assets/images/8.jpg",
];

List<String> services = [
  "Painting walls",
  "Painting walls",
  "Cleaning & Painting",
];

List<String> addresses = [
  "Old Cairo",
  "Ahmed Maher Street",
  "Omar Afandy Street",
];

List dates = [
  "12-2-2023",
  "25-2-2023",
  "22-2-2023",
];

List names = [
  "Ahmed Hani",
  "Omar Sherif",
  "Ahmed Mahmoud",
];
