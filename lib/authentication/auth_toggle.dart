import 'package:elite_courier/authentication/login.dart';
import 'package:elite_courier/authentication/register.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool isToggle = false;
  void toggleScreen() {
    setState(() {
      isToggle = !isToggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isToggle) {
      return SignUpPage(toggleScreen: toggleScreen);
    } else {
      return SignInPage(toggleScreen: toggleScreen);
    }
  }
}


final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  