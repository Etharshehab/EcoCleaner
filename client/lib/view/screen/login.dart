import 'package:ecocleaner_v2/view/screen/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecocleaner_v2/widget/custom_email.dart';

import '../../widget/bottomnavbar.dart';
import '../../widget/custom_password.dart';
import '../../widget/custom_username.dart';
import '../../widget/loginbutton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 50.0),
              const Text(
                'ECO CLEANER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(49, 204, 149, 1),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 30.0),
              const CustomName(),
              const SizedBox(height: 20.0),
              const CustomEmail(),
              const SizedBox(height: 20.0),
              const CustomPassword(),
              const SizedBox(height: 24.0),
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    )
                        .then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LayoutScreen(),
                          ));
                    });
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
              ),
              const SizedBox(height: 50.0),
              TextButton(
                onPressed: () {},
                child: const Text(
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.end,
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Or log in with',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/facebook.jpg',
                      height: 50.0,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/google.jpg',
                      height: 50.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    text: "Don't have an account? ",
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(49, 204, 149, 1),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
