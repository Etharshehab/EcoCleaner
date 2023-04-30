// import 'package:ecocleaner_v2/widget/bottomnavbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ecocleaner_v2/view/screen/login.dart';

import 'config/appthem.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ecocleaner_v2',
      theme: appTheme(),
      home: const Login(),
    );
  }
}

String getAsset(String image) => 'assets/images/$image.jpg';
