import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/models/products.dart';


import 'custom_text.dart';

List<Product> productSheeList = [
  Product(name: "Alface", vendor: "1. Kilograma", price: 1000.00, request: "Disponivel", image: "fumbua.jpeg" ),
  Product(name: "Banana", vendor: "1. Kilograma", price: 1000.00, request: "Disponivel", image: "banana.jpeg" ),
  Product(name: "Alface", vendor: "1. Kilograma", price: 1000.00, request: "Disponivel", image: "fumbua.jpeg" ),
  Product(name: "Noodels", vendor: "1. Kilograma", price: 1000.00, request: "Disponivel", image: "noodles.jpg" ),
  Product(name: "Filepe", vendor: "1. Kilograma", price: 1000.00, request: "Disponivel", image: "peixe.jpeg" ),
];

class CustomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: productSheeList.length,
        itemBuilder: (context, index) {
          return Container(
           //padding: EdgeInsets.only(left: 5, right: 5),
            child: Container(
              width: double.infinity,
              height: 130,
              //padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: grey[300],
                   // spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(1, 1))
              ]),
              child: Card(
                color: white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  //padding: EdgeInsets.only( right: 5, top: 10, bottom: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Align(
                          child: Center(
                            child: Image.asset(
                              "images/${productSheeList[index].image}",
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
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: CustomText(
                                        text: productSheeList[index].name,
                                        size: 18,
                                        color: black,
                                        weight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: CustomText(
                                        text: productSheeList[index].vendor,
                                        size: 14,
                                        weight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: CustomText(
                                        text: "\kz ${productSheeList[index].price}",
                                        size: 18,
                                        color: red,
                                        weight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: CustomText(
                                        text: productSheeList[index].request,
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
        },
      ),
    );
  }
}

