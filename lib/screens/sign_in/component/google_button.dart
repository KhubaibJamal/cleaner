import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: SizeConfig.screenWidth!,
        // height: ,
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        decoration: BoxDecoration(
          color: const Color(0xFFE4E7EB),
          border: Border.all(color: kGreyColor, width: 2.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/google icon.svg'),
            SizedBox(width: getProportionateScreenWidth(10)),
            Text(
              "Continue with google",
              style: greyStyle.copyWith(
                color: const Color(0xFF4B5768),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
