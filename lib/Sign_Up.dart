// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_apk/Sign_In.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sign_Up extends StatefulWidget {
  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.purple.shade400,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Sign up to Paradox!",
              style: TextStyle(
                  fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
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
                        Icon(FontAwesomeIcons.google, size: 20),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          "Sign Up with Google",
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "____________  Or continue with Email  ____________",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 330,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '   Enter your name',
                      hintStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5))),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 330,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '   Enter username',
                      hintStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5))),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 330,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '   Enter Email',
                      hintStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5))),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 330,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '   Enter password',
                      hintStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5))),
                )),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Checkbox(
                      value: isChecked,
                      activeColor: Colors.black,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      }),
                ),
                SizedBox(
                    width: 280,
                    child: Text(
                      'I agree with the Terms of Services & Privacy policy',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    child: Image.asset('assets/images/boy.png', scale: 5.07)),
                ),
              SizedBox(
                width: 200,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, minimumSize: Size(180, 60)
                          ),
                          onPressed: (){
                                  
                        }, child: Text('Create Account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(child: Text('Already have an account?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),)),
                    Padding(
                      padding: const EdgeInsets.only(left: 65),
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Sign_In())));
                      }, child: Text('Login', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),)),
                    )
                  ],
                ),
              )
              ],
              )
          ]),
        ),
      ),
    );
  }
}
