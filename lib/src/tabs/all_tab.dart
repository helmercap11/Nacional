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
       
        NetworkImage("https://images.unsplash.com/photo-1496318447583-f524534e9ce1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"),
        NetworkImage("https://images.unsplash.com/photo-1563822249510-04678c78df85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"),
        NetworkImage("https://images.unsplash.com/photo-1476837579993-f1d3948f17c2?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
        NetworkImage("https://images.unsplash.com/photo-1559443922-3f698a0ff27a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"),
        NetworkImage("https://images.unsplash.com/photo-1497534446932-c925b458314e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"),
        NetworkImage("https://images.unsplash.com/photo-1550087560-0d40289f48ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
        NetworkImage("https://images.unsplash.com/photo-1573208134098-d112fe111c06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
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
