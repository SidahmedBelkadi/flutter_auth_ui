import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcomloginsignup/screens/welcome/components/background.dart';
import 'package:welcomloginsignup/components/rounded_button.dart';
import 'package:welcomloginsignup/styles/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'WELCOME TO EDU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () => Navigator.of(context).pushNamed('/login'),
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () => null,
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
