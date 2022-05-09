// To parse this JSON data, do
//
//     final ingredient = ingredientFromMap(jsonString);

import 'dart:convert';

class Ingredient {
  Ingredient({
    required this.imagen,
    required this.proporcion,
    required this.name,
    required this.icono,
  });

  String imagen;
  String proporcion;
  String name;
  String icono;

  Ingredient copyWith({
    String? imagen,
    String? proporcion,
    String? name,
    String? icono,
  }) =>
      Ingredient(
        imagen: imagen ?? this.imagen,
        proporcion: proporcion ?? this.proporcion,
        name: name ?? this.name,
        icono: icono ?? this.icono,
      );

  factory Ingredient.fromJson(String str) =>
      Ingredient.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Ingredient.fromMap(Map<String, dynamic> json) => Ingredient(
        imagen: json["imagen"],
        proporcion: json["proporcion"],
        name: json["name"],
        icono: json["icono"],
      );

  Map<String, dynamic> toMap() => {
        "imagen": imagen,
        "proporcion": proporcion,
        "name": name,
        "icono": icono,
      };
}
