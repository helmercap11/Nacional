import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/models/category_food.dart';

import 'custom_text.dart';

List<CategoryFood> categoryDrinkList = [
  CategoryFood(name: "Sumo Naturais", image: "fumbua.jpeg"),
  CategoryFood(name: "Sumo Ácool", image: "fumbua.jpeg"),
  CategoryFood(name: "Aguardentes", image: "fumbua.jpeg"),
  CategoryFood(name: "Cervejas", image: "fumbua.jpeg"),
];

class DrinkItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryDrinkList.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: grey[300],
                      blurRadius: 15.0,
                      offset: Offset(0, 0.75),
                    )
                  ]),
                  child: Card(
                    color: white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0))),
                    child: Container(
                      height: 195,
                      width: 175,
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Align(
                                child: Container(
                                  alignment: Alignment.topRight,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(right: 5, top: 5),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Center(
                                  child: Image.asset(
                                    "images/${categoryDrinkList[index].image}",
                                    width: 175,
                                    height: 140,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: CustomText(
                                  text: categoryDrinkList[index].name,
                                  color: black,
                                  size: 18,
                                  weight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: white,
                                            blurRadius: 25.0,
                                            offset: Offset(0.0, 0.75))
                                      ]),
                                  child: Icon(
                                    Icons.near_me,
                                    color: pink,
                                    size: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(left: 9, top: 3),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: pink,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: pink,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: pink,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: pink,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: grey,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
