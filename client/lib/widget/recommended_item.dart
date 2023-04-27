import 'package:flutter/material.dart';

import 'package:ecocleaner_v2/widget/confirom_button.dart';
import "package:ecocleaner_v2/config/my_text.dart";

class CustomRecommendedContainer extends StatelessWidget {
  late String image;
  late String name;
  late String place;
  late String time;
  CustomRecommendedContainer({
    Key? key,
    required this.image,
    required this.name,
    required this.place,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Column(children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.greenAccent.shade700,
                ),
              ),
              child: Image.asset(
                image,
                height: 150,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                MyText(
                  data: name,
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
                      data: place,
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
                      Icons.timelapse,
                      color: Color.fromRGBO(49, 204, 149, 1),
                    ),
                    MyText(
                      data: time,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: const [
                    ConfirmButton(
                      title: "Choose",
                    )
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
