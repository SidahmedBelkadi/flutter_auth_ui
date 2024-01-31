import 'package:flutter/material.dart';
import 'package:welcomloginsignup/styles/constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Dont't have an account ?" : "Already have an account ?",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () => press(),
          child: Text(
            login ? "Sign Up" : "Sign in",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
