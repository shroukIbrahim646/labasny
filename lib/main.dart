import 'package:flutter/material.dart';
import 'package:labasny/HomePage.dart';
import 'package:labasny/ProductDetailPage.dart';
import 'package:labasny/favorite.dart';
import 'package:labasny/modeling.dart';
import 'package:labasny/ratingpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => HomePage(), // Rating page route
         // Favorite page route
      },
    );
  }
}
