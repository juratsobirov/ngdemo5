import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/signup_page.dart';

import 'home_page.dart';

class SignInPage extends StatefulWidget {
  static const String id = "signin_page";

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  _callSignUpPage(){
    // Navigator.of(context).pushReplacementNamed(SignUpPage.id); //this first case
    Navigator.pushReplacementNamed(context, SignUpPage.id); //these are the same
  }

  _callHomePage(){
    // Navigator.pushReplacementNamed(context, HomePage.id);
   Navigator.of(context).pushReplacementNamed(HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // #logotip
                  Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontFamily: "Billabong",
                    ),
                  ),

                  //   #emailinput
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle:
                            TextStyle(color: Colors.white54, fontSize: 17),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  //   #passwordinput
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle:
                            TextStyle(color: Colors.white54, fontSize: 17),
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),

                  // #signinbutton
                  GestureDetector(
                    onTap: () {
                      _callHomePage();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // #signuob
            Container(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't hava an account?",
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: () {
                      _callSignUpPage();
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
