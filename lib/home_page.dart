import 'package:flutter/material.dart';
import 'package:recipe_app/recipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: const Text('Home Page'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RecipePage()));
          },
        ),
      ),
    );
  }
}
