import 'package:flutter/material.dart';
import '../view/screen/login.dart';

class CustomPassword extends StatefulWidget {
  const CustomPassword({super.key});

  @override
  State<CustomPassword> createState() => CustomPasswordState();
}

class CustomPasswordState extends State<CustomPassword> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 8, 235, 15),
            width: 5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        fillColor: Colors.white,
        hintText: 'Enter your password',
      ),
    );
  }
}
