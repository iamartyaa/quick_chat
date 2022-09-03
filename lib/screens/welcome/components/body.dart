import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_chat/constants.dart';
import 'package:quick_chat/screens/login/login-screen.dart';

import '../../../components/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to QuickChat',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
            SizedBox(height: size.height*0.04,),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height*0.06,),
            RoundedButton(
              text: 'LOGIN',
              press: (){
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              press: (){},
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}