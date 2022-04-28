import 'package:flutter/material.dart';

import 'models/postres_dos.dart';
import 'models/postres_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const Postres(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
