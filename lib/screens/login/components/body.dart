import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcomloginsignup/components/already_have_an_account_check.dart';
import 'package:welcomloginsignup/components/rounded_button.dart';
import 'package:welcomloginsignup/components/rounded_input_field.dart';
import 'package:welcomloginsignup/components/rounded_password_field.dart';
import 'package:welcomloginsignup/screens/login/components/background.dart';
import 'package:welcomloginsignup/styles/constants.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset('assets/icons/login.svg'),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(hintText: 'Your email', onChanged: (value) {}),
          RoundedPasswordField(onChanged: (value) {}),
          RoundedButton(text: 'LOGIN', press: () => null),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAccountCheck(
            press: () => null,
          ),
        ],
      ),
    );
  }
}
