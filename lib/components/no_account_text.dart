import 'package:flutter/material.dart';
import 'package:tenun_app/constans.dart';
// import 'package:tenun_app/screens/forgot_password.dart/forgot_password_screen.dart';
// import 'package:tenun_app/screens/sign_up/sign_up_screen.dart';
import 'package:tenun_app/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          // onTap: () =>
          //     Navigator.popAndPushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
