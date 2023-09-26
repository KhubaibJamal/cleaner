import 'package:flutter/material.dart';
import 'package:kleeners/screens/sign_in/sign_in_screen.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignInScreen.routeName);
      },
      child: Text.rich(
        TextSpan(
          text: "Already have an account?",
          style: greyStyle.copyWith(fontSize: getProportionateScreenWidth(18)),
          children: [
            TextSpan(
              text: " Sign in here ",
              style: greyStyle.copyWith(
                color: const Color(0xFFEC441E),
                fontSize: getProportionateScreenWidth(18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
