import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quick_chat/constants.dart';
import 'package:quick_chat/screens/login/login-screen.dart';
import 'package:quick_chat/screens/signup/signup_screen.dart';
import 'package:quick_chat/screens/welcome/welcome_screen.dart';

Future main() async {
  // FirebaseFirestore.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: const WelcomeScreen(),
      routes: {
        LoginScreen.routeName:(context) => const LoginScreen(),
        SignUpScreen.routeName:(context) => const SignUpScreen(),
      },
    );
  }
}
