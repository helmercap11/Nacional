import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/models/products.dart';
import 'package:nacional/src/screens/detail_all_page.dart';
import 'package:nacional/src/widgets/custom_text.dart';

List<Product> productList = [
  Product(
      name: "Fumbua",
      price: 1000.00,
      rating: 4.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "fumbua.jpeg"),
  Product(
      name: "Frutas",
      price: 1000.00,
      rating: 4.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "frutas.jpg"),
  Product(
      name: "Safu",
      price: 1000.00,
      rating: 4.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "safu.jpeg"),
  Product(
      name: "Bombo",
      price: 1000.00,
      rating: 4.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "bombo.jpeg"),
  Product(
      name: "Peixe Fresco",
      price: 1000.00,
      rating: 4.7,
      vendor: "4",
      request: "Disponivel",
      image: "peixefresco.jpeg"),
  Product(
      name: "Banana",
      price: 1000.00,
      rating: 4.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "bananab.jpg"),
  Product(
      name: "Peixe Seco",
      price: 1000.00,
      rating: 3.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "peixe.jpeg"),
  Product(
      name: "Abacate",
      price: 1000.00,
      rating: 4.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "abacate.jpeg"),
  Product(
      name: "Mandioca",
      price: 1000.00,
      rating: 4.7,
      vendor: "1. Kilograma",
      request: "Disponivel",
      image: "mandioca.jpeg"),
];

class CustomAll extends StatelessWidget {
  
   List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailAllPage(),
                  ));
            },
            child: Container(
              //padding: EdgeInsets.all(8),
              child: Container(
                height: 130,
                width: double.infinity,
                //padding: EdgeInsets.all(12),
               // margin: EdgeInsets.all(6),
                decoration: BoxDecoration( boxShadow: [
                  BoxShadow(
                      color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: Card(
                  //spacing: 5.0,
                  //runSpacing: 5.0,
                 // direction: Axis.vertical,
                 color: white,
                 elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                      )
                    ),
                  child: Container(
                   alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       /*spacing: 5.0,
                       runSpacing: 5.0,
                       direction: Axis.vertical,*/
                      //mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Align(
                            child: Center(
                              child: Image.asset("images/${productList[index].image}",
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
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: CustomText(
                                          text: productList[index].name,
                                          size: 18,
                                          color: black,
                                          weight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        child: CustomText(
                                          text: productList[index].vendor,
                                          size: 14,
                                          weight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        child: CustomText(
                                          text: "\kz ${productList[index].price}",
                                          size: 18,
                                          color: pink,
                                          weight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Container(
                                        child: CustomText(
                                          text: productList[index].request,
                                          color: gren,
                                          weight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 40,),
                                  IconButton(
                                    icon: Icon(
                                      Icons.chevron_right,
                                      color: pink,
                                      size: 30,
                                    ), 
                                    onPressed: null)
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
            ),
          );
        },
      ),
    );
  }
}

