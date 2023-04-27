import 'package:ecocleaner_v2/widget/bottomnavbar.dart';
import 'package:flutter/material.dart';
import "package:ecocleaner_v2/view/screen/home.dart";
import 'package:ecocleaner_v2/view/screen/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("ECOCLEANER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(49, 204, 149, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 20)),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("SIGN UP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 32)),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 32, right: 32),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        scrollPadding: EdgeInsets.all(10),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: (BorderSide(
                                color: Color.fromARGB(255, 94, 171, 96))),
                          ),
                          hintStyle: TextStyle(color: Colors.black),
                          labelText: 'Username',
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 32, right: 32),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        scrollPadding: EdgeInsets.all(10),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          hintStyle: TextStyle(color: Colors.black),
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 32, right: 32),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        scrollPadding: EdgeInsets.all(10),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          hintStyle: TextStyle(color: Colors.black),
                          labelText: 'Password',
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 32, right: 32),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        scrollPadding: EdgeInsets.all(10),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          hintStyle: TextStyle(color: Colors.black),
                          labelText: 'Confirm Password',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        shape: const StadiumBorder(),
                        //padding: EdgeInsets.symmetric(vertical: 20,horizontal: 120),
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 120),
                        backgroundColor: const Color.fromRGBO(49, 204, 149, 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LayoutScreen()));
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("I already have an account! "),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ));
                            },
                            child: const Text(
                              "LOG IN",
                              style: TextStyle(
                                color: Color.fromRGBO(49, 204, 149, 1),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
