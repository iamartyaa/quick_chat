import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_chat/components/rounded_button.dart';
import 'package:quick_chat/constants.dart';

import '../../../components/already_account_check.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height*0.03,),
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
            RoundedButton(text: 'LOGIN', press: () {}),
            AlreadyAccountCheck(
              login: true,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
