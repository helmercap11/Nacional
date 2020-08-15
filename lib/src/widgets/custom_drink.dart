import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/models/products.dart';

import 'custom_text.dart';

List<Product> productDrinkList = [
  Product(
      name: "Sumo de Mucua",
      vendor: "1. Litro",
      price: 1000.00,
      request: "Disponivel",
      image: "fumbua.jpeg"),
  Product(
      name: "Sumo de Maracuja",
      vendor: "1. Litro",
      price: 1000.00,
      request: "Disponivel",
      image: "safu.jpeg"),
  Product(
      name: "Cuca",
      vendor: "24 Unidades",
      price: 1000.00,
      request: "Disponivel",
      image: "empty_cart_state.png"),
  Product(
      name: "Caipirinha de Mucua",
      vendor: "1. Litro",
      price: 1000.00,
      request: "Disponivel",
      image: "bluehill.jpg"),
];

class CustomDrinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: productDrinkList.length,
          itemBuilder: (context, index) {
            return Container(
              //padding: EdgeInsets.only(left: 0, right: 0),
              child: Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: grey[300], blurRadius: 4, offset: Offset(1, 1))
                ]),
                child: Card(
                  color: white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5.0))),
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      direction: Axis.vertical,
                      //mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Align(
                            child: Center(
                              child: Image.asset(
                                "images/${productDrinkList[index].image}",
                                width: 150,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                             crossAxisAlignment: CrossAxisAlignment.center, 
                            /*crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,*/
                            //mainAxisSize: MainAxisSize.max,
                           // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.start,
                                    direction: Axis.vertical,
                                    //crossAxisAlignment:
                                        //CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: CustomText(
                                          text: productDrinkList[index].name,
                                          color: black,
                                          weight: FontWeight.bold,
                                          size: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: CustomText(
                                          text: productDrinkList[index].vendor,
                                          size: 14,
                                          weight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: CustomText(
                                          text: "\Kz ${productDrinkList[index].price}",
                                          size: 18,
                                          color: pink,
                                          weight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: CustomText(
                                          text: productDrinkList[index].request,
                                          color: gren,
                                          weight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
