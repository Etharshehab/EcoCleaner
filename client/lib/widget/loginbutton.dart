import 'package:flutter/material.dart';

import 'bottomnavbar.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LayoutScreen(),
            ),
          );
        },
        child: Container(
          height: 50,
          width: 100,
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 24,
          ),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(49, 204, 149, 1),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Text(
            textAlign: TextAlign.center,
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
