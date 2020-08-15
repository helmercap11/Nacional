import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/models/products.dart';
import 'package:nacional/src/screens/PayAllPage.dart';
import 'package:nacional/src/widgets/custom_text.dart';

class DetailAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do pedido"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset("images/fumbua.jpeg"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0)),
              elevation: 1,
              margin: EdgeInsets.all(5),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomText(
                      text: "Fumbua",
                      color: black,
                      weight: FontWeight.w500,
                      size: 20,
                    ),
                    CustomText(
                      text: "1000.00",
                      color: pink,
                      size: 20,
                      weight: FontWeight.w500,
                    )
                  ],
                ),
              ],
            ),
            //SizedBox(height: 5,),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PayAllPage(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: pink,
                      border: Border.all(color: white, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: CustomText(
                        text: "Encomendar",
                        size: 18.0,
                        color: white,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 15,),
            Container(
              //preferredSize: Size.fromHeight(10.0),
              padding: EdgeInsets.only(right: 185),
              child: Container(
                padding: EdgeInsets.only(),
                child: CustomText(
                  text: "Detalhes do produto",
                  weight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              child: Text(
                "Derivado do leite, em sua fabricação são adicionadas bactérias que atuam no organismo para melhorar o funcionamento do sistema imunológico.",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    height: 1.50),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}

