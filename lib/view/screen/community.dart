import 'package:flutter/material.dart';
import '../../config/my_text.dart';
import '../../widget/custom_appbar2.dart';
import '../../widget/recommended_item.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomAppBarTwo(),
              MyText(
                data: "Recommended",
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                color: Colors.grey[200],
                height: 400,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomRecommendedContainer(
                        image: images[index],
                        name: names[index],
                        place: places[index],
                        time: times[index],
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
  'assets/images/4.jpg',
  'assets/images/5.jpg',
];

List<String> places = [
  "New Cairo",
  "Garden City",
];

List times = [
  "10 am - 5 pm",
  "10 am - 5 pm",
];

List names = [
  "Ahmed Mahmoud",
  "Omar Sherif",
];
