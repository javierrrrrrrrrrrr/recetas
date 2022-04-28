import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:recipe_app/home_controller.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flip_card/flip_card.dart';

import 'models/recipe_model.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Stack(
            children: const [
              HeaderRecipe(),
              Padding(
                padding: EdgeInsets.only(top: 274),
                child: RecipeBody(),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class RecipeBody extends StatelessWidget {
  const RecipeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Ingredient> ingredient = [
      Ingredient(
        image: 'assets/queso.png',
        proporcion: '1/2',
        name: 'Queso',
        iconoProporcion: 'assets/cuchara.png',
      ),
      Ingredient(
        image: 'assets/tomate.png',
        proporcion: '2/4',
        name: 'Tomate',
        iconoProporcion: 'assets/cuchara.png',
      ),
      Ingredient(
        image: 'assets/lechuga.png',
        proporcion: '1/2',
        name: 'Lechuga',
        iconoProporcion: 'assets/cuchara.png',
      ),
      Ingredient(
        image: 'assets/hamburguesa.png',
        proporcion: '1/2',
        name: 'Hamburguesa',
        iconoProporcion: 'assets/cuchara.png',
      ),
      Ingredient(
        image: 'assets/huevo.png',
        proporcion: '2',
        name: 'Huevo',
        iconoProporcion: 'assets/cuchara.png',
      ),
      Ingredient(
        image: 'assets/pan.png',
        proporcion: '1',
        name: 'Pan',
        iconoProporcion: 'assets/cuchara.png',
      ),
      Ingredient(
        image: 'assets/mostaza.png',
        proporcion: '1',
        name: 'Mostaza',
        iconoProporcion: 'assets/cuchara.png',
      ),
    ];

    HomeController homeController = Get.put(HomeController());
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeTittle(w: w),
          RecipeRating(w: w, homeController: homeController),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 18, vertical: 25),
            child: const TresIconosSection(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: w / 10, vertical: 10),
            child: const ToggleSwitchWidget(),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: ingredient.length,
                itemBuilder: (context, index) => IngredientsCard(
                  ingredient: ingredient[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IngredientsCard extends StatelessWidget {
  const IngredientsCard({
    Key? key,
    required this.ingredient,
  }) : super(key: key);
  final Ingredient ingredient;
  @override
  Widget build(BuildContext context) {
    return FlipCard(
        front: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 40, left: 15),
          width: 100,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(0, 0),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 90,
                width: 80,
                child: Image.asset(
                  ingredient.image,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  ingredient.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ingredient.proporcion,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    ingredient.iconoProporcion,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
        back: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 40, left: 15),
          width: 100,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(0, 0),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
              child: Text(
            '400g',
            style: TextStyle(fontSize: 25),
          )),
        ));
  }
}

class ToggleSwitchWidget extends StatelessWidget {
  const ToggleSwitchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minHeight: 40,
      borderWidth: 5,
      borderColor: const [
        Colors.grey,
      ],
      minWidth: 150.0,
      cornerRadius: 18.0,
      activeBgColors: const [
        [Colors.white],
        [Colors.white],
      ],
      activeFgColor: Colors.amber,
      inactiveBgColor: Colors.grey,
      inactiveFgColor: Colors.white,
      initialLabelIndex: 1,
      totalSwitches: 2,
      labels: const ['Instrucciones', 'Ingredientes'],
      fontSize: 18,
      radiusStyle: true,
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}

class TresIconosSection extends StatelessWidget {
  const TresIconosSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Icon(Icons.timer_rounded, size: 30, color: Colors.grey[600]),
              const Text("45 min"),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Icon(Icons.restaurant_menu, size: 30, color: Colors.grey[600]),
              const Text("Porciones: 4"),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Icon(Icons.restaurant, size: 30, color: Colors.grey[600]),
              const Text("LVL: Medio"),
            ],
          ),
        ),
      ],
    );
  }
}

class RecipeRating extends StatelessWidget {
  const RecipeRating({
    Key? key,
    required this.w,
    required this.homeController,
  }) : super(key: key);

  final double w;
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w / 10),
      child: Row(
        children: [
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              homeController.rating.value = rating;
              print(homeController.rating.value);
            },
          ),
          const SizedBox(width: 10),
          Obx(() => Text(
                homeController.rating.value.toString(),
                style: const TextStyle(
                  fontSize: 25,
                ),
              )),
        ],
      ),
    );
  }
}

class RecipeTittle extends StatelessWidget {
  const RecipeTittle({
    Key? key,
    required this.w,
  }) : super(key: key);

  final double w;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w / 10, vertical: 20),
      child: const Text(
        "Hamburgesa de Queso",
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}

class HeaderRecipe extends StatelessWidget {
  const HeaderRecipe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        ImagenRecipe(),
        Positioned(
          top: 30,
          left: 20,
          child: BackButton(),
        ),

        // TODO: Hacer el rating por estrellas.
      ],
    );
  }
}

class ImagenRecipe extends StatelessWidget {
  const ImagenRecipe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Image.network(
        'https://images.unsplash.com/photo-1571091718767-18b5b1457add?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1744&q=80',
        fit: BoxFit.fill,
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      padding: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
