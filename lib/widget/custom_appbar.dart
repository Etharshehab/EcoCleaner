import 'package:ecocleaner_v2/config/my_text.dart';
import 'package:ecocleaner_v2/widget/searchfield2.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
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
          fontSize: 20.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        MyText(
          data: "Our",
          color: Colors.black,
          fontSize: 16,
        ),
        MyText(
          data: "Achievements",
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Padding(padding: EdgeInsets.all(20.0), child: SearchField()),
        const SizedBox(
          height: 10.0,
        ),
      ]),
    );
  }
}
