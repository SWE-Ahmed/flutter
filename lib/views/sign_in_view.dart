// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/constants.dart';
import 'package:project1/services/auth.dart';
import 'package:project1/views/sign_up_view.dart';
import 'package:project1/services/wrapper.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    kHeartSvg,
                    width: 209,
                    height: 60,
                  ),
                  SizedBox(height: 40),
                  TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color(0xFFFAFAFA),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: Color(0xffC4C4C4), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: Color(0xffC4C4C4), width: 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Color(0xffFAFAFA),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: Color(0xffC4C4C4), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: Color(0xffC4C4C4), width: 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color(0xff5ACBFE),
                          fontWeight: FontWeight.w700,
                          fontSize: 11),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Login button ----
                  MaterialButton(
                    height: 40,
                    onPressed: () async {
                      if (!(email == null && password == null)) {
                        await Auth.signIn(email, password);
                        // the navigator of the app is forced to build the specific widget/view
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Wrapper()));
                      } else {
                        // returns a snackbar at the bottom to alert the user to enter credentials
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Please enter both email and password. If you dont have an account, create one by pressing sign up!',
                            style: TextStyle(
                                fontFamily: 'Times New Roman', fontSize: 20),
                          ),
                          backgroundColor: Colors.lightBlue[300],
                        ));
                      }
                    },
                    color: Color(0xff5ACBFE),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SignUpView())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don't have an account?",
                        style: TextStyle(decoration: TextDecoration.none),
                        textAlign: TextAlign.center),
                    SizedBox(width: 5),
                    Text('Sign Up!',
                        style: TextStyle(color: Color(0xff5ACBFE)),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
