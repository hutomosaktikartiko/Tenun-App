import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenun_app/components/default_button.dart';
import 'package:tenun_app/components/rounded_icon_btn.dart';
import 'package:tenun_app/constans.dart';
import 'package:tenun_app/models/Product.dart';
import 'package:tenun_app/screens/details/components/color_dots.dart';
import 'package:tenun_app/screens/details/components/product_description.dart';
import 'package:tenun_app/screens/details/components/product_images.dart';
import 'package:tenun_app/screens/details/components/top_rounded_container.dart';
import 'package:tenun_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.15,
                                  right: SizeConfig.screenWidth * 0.15,
                                  top: getProportionateScreenWidth(15),
                                  bottom: getProportionateScreenWidth(40)),
                              child: Defaultbutton(
                                text: "Add to Cart",
                                press: () {},
                              ),
                            ))
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
