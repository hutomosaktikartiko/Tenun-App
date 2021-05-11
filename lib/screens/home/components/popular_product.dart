import 'package:flutter/material.dart';
import 'package:tenun_app/components/product_card.dart';
import 'package:tenun_app/models/Product.dart';
import 'package:tenun_app/screens/details/details_screen.dart';
import 'package:tenun_app/screens/home/components/section_title.dart';
import 'package:tenun_app/size_config.dart';

class PopularPorduct extends StatelessWidget {
  const PopularPorduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular)
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                        context, DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(
                            product: demoProducts[index])),
                  );
                return SizedBox.shrink();
              }),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
