import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kleeners/const.dart';
import 'package:kleeners/model/laundry_service.dart';
import 'package:kleeners/size_config.dart';

class LaundryGrid extends StatelessWidget {
  const LaundryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: laundryItemList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: getProportionateScreenWidth(10),
        crossAxisSpacing: getProportionateScreenWidth(20),
        mainAxisExtent: SizeConfig.screenWidth! * 0.5,
      ),
      itemBuilder: (context, index) {
        return GridItem(
          icon: "${laundryItemList[index]["image"]}",
          title: "${laundryItemList[index]["title"]}",
        );
      },
    );
  }
}

class GridItem extends StatelessWidget {
  final String title, icon;
  const GridItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kLightBlueColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getProportionateScreenHeight(120),
            width: getProportionateScreenWidth(120),
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Container(
              height: getProportionateScreenWidth(50),
              width: getProportionateScreenWidth(50),
              decoration: const BoxDecoration(
                color: Color(0xFFA2F07D),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(icon),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: greyStyle.copyWith(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(17),
            ),
          ),
        ],
      ),
    );
  }
}
