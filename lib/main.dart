// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyTabBar());

class MyTabBar extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: getBaseColor('primary'),
            title: Text('In a Cake'),
          ),
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Icon(Icons.home),
              Icon(Icons.shopping_cart),
              Icon(Icons.category),
              Icon(Icons.account_circle),
            ],
          ),
        ),
      ),
    );
  }
}


Widget menu() {
  return Container(
    color: getBaseColor('primary'),
    child: TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.blue,
      tabs: [
        Tab(text: "Home", icon: Icon(Icons.home)),
        Tab(text: "Cart", icon: Icon(Icons.shopping_cart)),
        Tab(text: "Category", icon: Icon(Icons.category)),
        Tab(text: "Account", icon: Icon(Icons.account_circle)),
      ],
    ),
  );
}

Color getBaseColor(key) {
  if (key=='primary') {
    return Color(0xFF3F5AA6);
  }
  return Color(0xFF3F5AA6);
}