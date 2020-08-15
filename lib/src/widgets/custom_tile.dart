import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';

import 'custom_text.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomTile({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: pink,
            size: 35,
          ),
          SizedBox(width: 10,),
          Container(
            width: 180,
            child: CustomText(
              text: title ?? "",
              size: 20,
              color: grey,
            ),
          ),
        ],
      ),
    );
  }
}
