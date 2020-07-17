import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/widgets/custom_tile.dart';

import 'custom_text.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 140,
              color: red,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: black,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars1.githubusercontent.com/u/32169606?s=460&u=f4860aead264690bb613eb80f00a58e158e25fb1&v=4")),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomText(
                        text: "Olá Helmer",
                        color: white,
                        size: 20,
                      ),
                      CustomText(
                        text: "+244 938 690 039",
                        color: white,
                      )
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                        color: white,
                        size: 38,
                      ),
                      onPressed: null)
                ],
              ),
            ),
            CustomTile(
              icon: Icons.notifications,
              title: "Notificação",
            ),
            CustomTile(
              icon: Icons.person,
              title: "Perfil",
            ),
            CustomTile(
              icon: Icons.list,
              title: "Orders",
            ),
            CustomTile(
              icon: Icons.list,
              title: "Orders",
            ),
            Spacer(),
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.only(left: 10, top: 20),
              color: red,
              child: CustomText(
                text: "Suporte",
                color: white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

