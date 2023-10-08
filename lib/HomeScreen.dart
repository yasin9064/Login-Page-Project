// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_apk/Sign_In.dart';
import 'package:flutter_apk/Sign_Up.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.purple.shade400,
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 40,
                width: 400,
                child: Text(
                  "Welcome To Paradox!",
                  style: TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                  width: 300,
                  child: Text(
                    "A Place Where Everything Is Mystery",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 340,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: SizedBox(
                      height: 200,
                      child: Image.asset('assets/images/Cloud2.png')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(11.3, 110.0, 0.0, 0.0),
                  child: SizedBox(
                    height: 200,
                    child: Image.asset('assets/images/Cloud1.png'),
                  ),
                )
              ]),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, minimumSize: Size(300, 55)),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Sign_Up())));
                      });
                    },
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Sign_In())));
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )),
                )
              ],
            )),
            SizedBox(
                child: Image.asset(
              'assets/images/Cloudd.png',
              scale: 3.2,
            ))
          ],
        ),
      ),
    ));
  }
}
