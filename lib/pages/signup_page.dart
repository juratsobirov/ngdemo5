import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/signin_page.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "signup_page";

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  _callSignInPage(){
    // Navigator.pushReplacementNamed(context, SignInPage.id);
    Navigator.of(context).pushReplacementNamed(SignInPage.id);
  }

  _callHomePage(){
    // Navigator.of(context) .pushReplacementNamed(HomePage.id);
    Navigator.pushReplacementNamed(context, HomePage.id);
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
                  Text("Instagram",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontFamily: "Billabong")),
                  // #emailinput
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle:
                            TextStyle(fontSize: 17, color: Colors.white54),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  //   #fullnameinput

                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left:10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Fullname",
                        hintStyle:
                            TextStyle(color: Colors.white54, fontSize: 17),
                        border: InputBorder.none,
                      ),
                    ),
                  ),


                  // #passwordinput
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
                    ),
                  ),


                  // #confirmpassword
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
                        hintText: "Confirm Password",
                        hintStyle:
                            TextStyle(color: Colors.white54, fontSize: 17),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      _callHomePage();
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text("Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 17)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // #signinb
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 14)),

                  SizedBox(width:10),

                  // #signinbutton
                  GestureDetector(
                    onTap: () {
                      _callSignInPage();
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
