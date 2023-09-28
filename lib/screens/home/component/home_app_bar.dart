import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: SizeConfig.screenWidth! * 0.1),
        Image.asset(
          'assets/images/new logo.png',
          scale: 2.5,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset('assets/icons/bell.svg'),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ],
    );
  }
}
