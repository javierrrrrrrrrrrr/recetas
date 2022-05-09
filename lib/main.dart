import 'package:flutter/material.dart';
import 'package:recipe_app/recipe.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const RecipePage(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
