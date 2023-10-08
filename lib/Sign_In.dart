// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_apk/Sign_Up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sign_In extends StatefulWidget {
  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.purple.shade400,
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'Log in to Paradox!',
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, maximumSize: Size(300, 55)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.google),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'Log in with Google',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '____________  Or Log in with Email  ____________',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 125, 10),
              child: Text(
                'Username or Email',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.5))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 190, 10),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: SizedBox(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot?',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black, minimumSize: Size(150, 55)),
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 140, 0.0),
              child: SizedBox(
                  child: Text(
                "Don't have an account?",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: SizedBox(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Sign_Up())));
                      });
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
