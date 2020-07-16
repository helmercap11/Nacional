import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/widgets/custom_sheet.dart';
import 'package:nacional/src/widgets/custom_text.dart';
import 'package:nacional/src/widgets/food_items.dart';

class FoodTab extends StatefulWidget {
  @override
  _FoodTabState createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          FoodTitle(),
          FoodItems(),
          CustomSheet(),
        ],
      ),
    );
  }
}


/*class Sheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      padding: EdgeInsets.only(left: 10, right: 10),
     decoration: BoxDecoration(
       boxShadow: [
         BoxShadow(
           color: grey[300],
           spreadRadius: 1,
           blurRadius: 1,
           offset: Offset(0, 1)
         )
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
                       child: Image.asset("images/fumbua.jpeg",
                              width: 170,
                              height: 130,
                              fit: BoxFit.cover,
                       ),
                     ),
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.only(left: 10),
                    child: Column(
                     mainAxisSize:  MainAxisSize.max,
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
                                   text: "Alface",
                                   size: 18,
                                   color: black,
                                   weight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(height: 5,),
                               Container(
                                 child: CustomText(
                                   text: "Bengo",
                                   size: 14,
                                   weight: FontWeight.w600,
                                 ),
                               ),
                               SizedBox(height: 5,),
                               Container(
                                 child: CustomText(
                                   text: "1000.00",
                                   size: 18,
                                   color: red,
                                   weight: FontWeight.bold,
                                 ),
                               ),
                               SizedBox(height: 10,),
                               Container(
                                 child: CustomText(
                                   text: "Disponivel",
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
    );
  }
}*/

class FoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomText(
            text: "Produtos Diversos",
            size: 20,
            color: grey,
            weight: FontWeight.w300,
          )
        ],
      ),
    );
  }
}


class SheetTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
     //margin: EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomText(
            text: "Produtos Diversos",
            size: 20,
            color: grey,
            weight: FontWeight.w300,
          )
        ],
      ),
    );
  }
}

