import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Password",
            style: headingStyle.copyWith(fontWeight: FontWeight.w500),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: kPurpleColor,
                fontSize: getProportionateScreenWidth(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
