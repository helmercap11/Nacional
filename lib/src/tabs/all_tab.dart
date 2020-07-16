import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/widgets/custom_all.dart';
import 'package:nacional/src/widgets/custom_text.dart';

class AllTab extends StatefulWidget {
  @override
  _AllTabState createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  Widget imageCarousel = new Container(
    height: 200.0,
    width: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/frutas.jpg'),
        AssetImage('images/frutas.jpg'),
        AssetImage('images/frutas.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: grey,
      indicatorBgPadding: 2.0,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            imageCarousel,
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomText(
                text: "Destaque",
                size: 20,
                color: grey,
              ),
            ),
            CustomAll(),
          ],
        ),
      ),
    );
  }
}
