import 'package:flutter/material.dart';
import 'package:ecocleaner_v2/view/screen/achivement.dart';
import 'package:ecocleaner_v2/view/screen/community.dart';
import 'package:ecocleaner_v2/view/screen/profile.dart';

import '../view/screen/home.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<LayoutScreen> {
  int currentIndex = 0;
  bool isSelected = false;
  onNavItemTap(index) {
    setState(() {
      currentIndex = index;
      isSelected = true;
    });
    onItemTap(int index) {
      setState(() {
        Navigator.pop(context);
        currentIndex = index;
      });
    }
  }

  List<Widget> screen = [
    const Home(),
    const Community(),
    const Avhivement(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex], // return the selected screen widget
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          onNavItemTap(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_3),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
