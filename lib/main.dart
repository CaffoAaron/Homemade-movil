import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/category-screen.dart';
import 'package:theMealDB_app/screens/item-screen.dart';
import 'package:theMealDB_app/screens/result_search-screen.dart';

import './screens/home-screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homemade App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      // home: TabsScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryScreen.routeName: (ctx) => CategoryScreen(),
        ItemScreen.routeName: (ctx) => ItemScreen(),
        ResultSearchScreen.routeName: (ctx) => ResultSearchScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        );
      },
    );
  }
}
