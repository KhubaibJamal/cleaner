import 'package:flutter/material.dart';

import 'package:kleeners/component/background_image.dart';
import 'package:kleeners/const.dart';
import 'package:kleeners/size_config.dart';

import 'home_app_bar.dart';
import 'laundRy_grid.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // background image
          const BackgroundImage(),

          Positioned(
            bottom: 10,
            width: SizeConfig.screenWidth!,
            child: Center(
              child: Image.asset("assets/images/washing.png"),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(18)),
            child: Column(
              children: [
                // app bar
                SizedBox(height: getProportionateScreenWidth(20)),
                const HomeAppBar(),

                // Laundry text
                SizedBox(height: getProportionateScreenWidth(20)),
                Text(
                  "Select Laundry Service",
                  style: greyStyle.copyWith(
                    color: const Color(0xFF59979B),
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(22),
                  ),
                ),

                // Laundry grid
                SizedBox(height: getProportionateScreenWidth(20)),
                const LaundryGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
