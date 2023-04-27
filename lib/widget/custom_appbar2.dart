import 'package:ecocleaner_v2/config/my_text.dart';
import 'package:ecocleaner_v2/widget/searchfield2.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../view/screen/charities.dart';
import '../view/screen/cleaning.dart';
import '../view/screen/drawing.dart';

class CustomAppBarTwo extends StatefulWidget {
  const CustomAppBarTwo({Key? key}) : super(key: key);

  @override
  _CustomAppBarTwoState createState() => _CustomAppBarTwoState();
}

class _CustomAppBarTwoState extends State<CustomAppBarTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 10.0,
        ),
        MyText(
          data: "ECOCLEANER",
          color: const Color.fromRGBO(49, 204, 149, 1),
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          height: 15.0,
        ),
        MyText(
          data: "Discover",
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        MyText(
          data: "Cleaning Services",
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(padding: EdgeInsets.all(20.0), child: SearchField()),
        const SizedBox(
          height: 10.0,
        ),
        MyText(
          data: "Choose Services",
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cleaning(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 80.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.greenAccent.shade100,
                    ),
                    child: Image.asset(getAsset("cleaning")),
                  ),
                  MyText(
                    data: "Cleaning",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Painting(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 80.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.greenAccent.shade100,
                    ),
                    child: Image.asset(getAsset("painting")),
                  ),
                  MyText(
                    data: "Painting",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Charities(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 80.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.greenAccent.shade100,
                    ),
                    child: Image.asset(getAsset("charities")),
                  ),
                  MyText(
                    data: "Charities",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    width: 80.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.greenAccent.shade100,
                    ),
                    child: Image.asset(getAsset("more")),
                  ),
                  MyText(
                    data: "More",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
