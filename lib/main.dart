import 'package:flutter/material.dart';
import 'package:recipe_app/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const HomePage(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
