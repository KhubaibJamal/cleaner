import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class BankBox extends StatelessWidget {
  final String title, icon;
  const BankBox({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: kGreyColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(icon),
          SizedBox(width: getProportionateScreenWidth(10)),
          Text(
            title,
            style: greyStyle.copyWith(
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
          const Spacer(),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: kBlueColor, width: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
