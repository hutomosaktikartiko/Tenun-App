import 'package:flutter/material.dart';
import 'package:tenun_app/components/default_button.dart';
import 'package:tenun_app/constans.dart';
import 'package:tenun_app/screens/home/home_screen.dart';
import 'package:tenun_app/screens/main_page.dart';
import 'package:tenun_app/screens/splash/components/splash_content.dart';
import 'package:tenun_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokot, Lets's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop \nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      text: splashData[index]["text"],
                      image: splashData[index]["image"]),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index))),
                    Spacer(
                      flex: 3,
                    ),
                    Defaultbutton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, MainPage.routeName);
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
