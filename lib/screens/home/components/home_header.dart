import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenun_app/screens/cart/cart_screen.dart';
import 'package:tenun_app/screens/home/components/search_field.dart';
import 'package:tenun_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:tenun_app/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            icon: Icon(CupertinoIcons.gear_alt),
            numOfItems: 0,
            press: () {},
          ),
          
        ],
      ),
    );
  }
}
