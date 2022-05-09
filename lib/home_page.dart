import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/recipe.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
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
