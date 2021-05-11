import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tenun_app/components/rounded_icon_btn.dart';
import 'package:tenun_app/models/Product.dart';
import 'package:tenun_app/screens/details/components/body.dart';
import 'package:tenun_app/screens/details/components/custom_app_bar.dart';
import 'package:tenun_app/size_config.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
