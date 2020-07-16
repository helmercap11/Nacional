import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/tabs/all_tab.dart';
import 'package:nacional/src/tabs/drinks_tab.dart';
import 'package:nacional/src/tabs/food_tab.dart';
import 'package:nacional/src/widgets/custom_all.dart';
import 'package:nacional/src/widgets/custom_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: red,
                ),
              ),
              ListTile(
                title: Text('item1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          // iconTheme: IconThemeData(color: white),
          elevation: 0.1,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Nacional",
                style: TextStyle(
                    color: white, fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ],
          ),

          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: white,
                ),
                onPressed: null),
          ],

          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Todos",
              ),
              Tab(
                text: "Alimentos",
              ),
              Tab(
                text: "Bebidas",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          AllTab(),
          FoodTab(),
          DrinksTab(),
        ]),
      ),
    );
  }
}



