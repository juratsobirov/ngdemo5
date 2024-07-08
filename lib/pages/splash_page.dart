import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/signin_page.dart';

class SplashPage extends StatefulWidget {

  static const String id = "splash_page";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _callSignInPage(){
    Navigator.of(context) .pushReplacementNamed(SignInPage.id);
  }

  _initTimer(){
    Timer(Duration(seconds:2), (){
      _callSignInPage();
    });
  }

  @override
  void initState(){
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1),
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "All rights reserved",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                "Instagram",
                style: TextStyle(
                    color: Colors.white, fontSize: 45, fontFamily: "Billabong"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
