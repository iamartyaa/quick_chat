import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/already_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/text_field_container.dart';
import '../../../constants.dart';
import '../../login/login-screen.dart';
import '../signup_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/signup.svg',
              width: size.height * 0.3,
            ),
            const TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                  hintText: 'Your Email',
                  border: InputBorder.none,
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                  hintText: 'Username',
                  border: InputBorder.none,
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  hintText: 'Password',
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            RoundedButton(text: 'SIGN UP', press: () {}),
            SizedBox(height: size.height*0.015,),
            AlreadyAccountCheck(
              login: false,
              press: () {
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
              },
            ),
            OrDivider(),
            SizedBox(height: size.height*0.02,),
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: kPrimaryLightColor),
              ),
              child: SvgPicture.asset('assets/icons/google-plus.svg',width: size.width*0.06,color: kPrimaryColor,),
            )
          ],
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      width: size.width * 0.6,
      child: Row(
        children: const [
          Expanded(
            child: Divider(
              color: Color(0xFFD9D9D9),
              height: 1.5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'OR',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Divider(
              color: Color(0xFFD9D9D9),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
