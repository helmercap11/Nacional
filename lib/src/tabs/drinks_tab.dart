import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/widgets/custom_drink.dart';
import 'package:nacional/src/widgets/custom_text.dart';
import 'package:nacional/src/widgets/drink_items.dart';

class DrinksTab extends StatefulWidget {
  @override
  _DrinksStateTab createState() => _DrinksStateTab();
}

class _DrinksStateTab extends State<DrinksTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          DrinkTitle(),
          DrinkItems(),
          CustomDrinks(),
        ],
      ),
    );
  }
}


class DrinkTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 9, right: 10, top: 5, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomText(
            text: "Bebidas",
            size: 20,
            color: grey,
            weight: FontWeight.w300,
          )
        ],
      ),
    );
  }
}
