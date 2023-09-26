import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class SignInWithText extends StatelessWidget {
  const SignInWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        width: SizeConfig.screenWidth! * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kGreyColor, width: 2.0),
        ),
        child: Center(
          child: Text("or sign in with", style: greyStyle),
        ),
      ),
    );
  }
}
