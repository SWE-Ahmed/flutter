// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/main_view.dart';
import 'package:project1/services/auth.dart';
import 'package:project1/sign_in_view.dart';

class Wrapper extends StatelessWidget {
  Wrapper({Key key}) : super(key: key);

  final bool _isSignedIn = Auth.getUser() != null;

  @override
  Widget build(BuildContext context) {
    if (_isSignedIn) {
      return MainView();
    } else {
      return SignInView();
    }
  }
}
