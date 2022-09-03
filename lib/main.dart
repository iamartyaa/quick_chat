import 'package:flutter/material.dart';
import 'package:quick_chat/constants.dart';
import 'package:quick_chat/screens/login/login-screen.dart';
import 'package:quick_chat/screens/signup/signup_screen.dart';
import 'package:quick_chat/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuickChat',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      routes: {
        LoginScreen.routeName:(context) => LoginScreen(),
        SignUpScreen.routeName:(context) => SignUpScreen(),
      },
    );
  }
}
