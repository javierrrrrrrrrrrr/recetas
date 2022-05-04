import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'models/recipe_model.dart';

class HomeController extends GetxController {
  var rating = 0.0.obs;
  var isInstruction = false.obs;
  var activeStep = 0.obs;
  RxList<Recipe> recipe = <Recipe>[].obs;

  @override
  void onInit() async {
    await loadData();
    super.onInit();
  }

  Future loadData() async {
    final data = await rootBundle.loadString("assets/recipes.json");

    Map<String, dynamic> json = jsonDecode(data);

    for (int i = 0; i < json["recipes"].length; i++) {
      recipe.add(Recipe.fromMap(json["recipes"][i]));
    }

    print(recipe[0].name);
  }
}
