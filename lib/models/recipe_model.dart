// To parse this JSON data, do
//
//     final recipe = recipeFromMap(jsonString);

import 'dart:convert';

import 'ingredient_model.dart';

class Recipe {
  Recipe({
    required this.name,
    required this.image,
    required this.cantRaciones,
    required this.ingredientes,
    required this.tiempoPrep,
    required this.intrucciones,
  });

  String name;
  String image;
  String cantRaciones;
  List<Ingredient> ingredientes;
  String tiempoPrep;
  String intrucciones;

  Recipe copyWith({
    String? name,
    String? image,
    String? cantRaciones,
    List<Ingredient>? ingredientes,
    String? tiempoPrep,
    String? intrucciones,
  }) =>
      Recipe(
        name: name ?? this.name,
        image: image ?? this.image,
        cantRaciones: cantRaciones ?? this.cantRaciones,
        ingredientes: ingredientes ?? this.ingredientes,
        tiempoPrep: tiempoPrep ?? this.tiempoPrep,
        intrucciones: intrucciones ?? this.intrucciones,
      );

  factory Recipe.fromJson(String str) => Recipe.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Recipe.fromMap(Map<String, dynamic> json) => Recipe(
        name: json["name"],
        image: json["image"],
        cantRaciones: json["cantRaciones"],
        ingredientes: List<Ingredient>.from(
            json["ingredientes"].map((x) => Ingredient.fromMap(x))),
        tiempoPrep: json["tiempoPrep"],
        intrucciones: json["intrucciones"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "image": image,
        "cantRaciones": cantRaciones,
        "ingredientes":
            List<Ingredient>.from(ingredientes.map((x) => x.toMap())),
        "tiempoPrep": tiempoPrep,
        "intrucciones": intrucciones,
      };
}
