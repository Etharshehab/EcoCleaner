import 'package:flutter/material.dart';

import '../config/my_text.dart';

// ignore: must_be_immutable
class CustomAchievementContainer extends StatelessWidget {
  late String image;
  late String service;
  late String address;
  late String date;
  late String name;
  CustomAchievementContainer({
    Key? key,
    required this.image,
    required this.service,
    required this.address,
    required this.date,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.greenAccent.shade700,
                  ),
                ),
                height: 150,
                width: 130.0,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          ]),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                MyText(
                  data: service,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color.fromRGBO(49, 204, 149, 1),
                    ),
                    MyText(
                      data: address,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.date_range_rounded,
                      color: Color.fromRGBO(49, 204, 149, 1),
                    ),
                    MyText(
                      data: date,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Color.fromRGBO(49, 204, 149, 1),
                    ),
                    MyText(
                      data: name,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyText(
                      data: "Cleaned Successfully",
                      color: const Color.fromRGBO(49, 204, 149, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
