import 'package:flutter/material.dart';
import 'package:tenun_app/screens/home/components/categories.dart';
import 'package:tenun_app/screens/home/components/popular_product.dart';
import 'package:tenun_app/screens/home/components/special_offers.dart';
import 'package:tenun_app/size_config.dart';
import 'package:tenun_app/screens/home/components/home_header.dart';
import 'package:tenun_app/screens/home/components/discount_banner.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            PopularPorduct(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}
