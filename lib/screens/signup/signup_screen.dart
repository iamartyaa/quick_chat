import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
    );
  }
}
