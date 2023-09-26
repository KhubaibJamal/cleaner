import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class TermAndConditions extends StatelessWidget {
  const TermAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "By continuing, you agree to our ",
        style: greyStyle.copyWith(fontSize: getProportionateScreenWidth(14)),
        children: [
          TextSpan(
            text: "terms of service.",
            style: greyStyle.copyWith(
              color: const Color(0xFFEC441E),
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
        ],
      ),
    );
  }
}
