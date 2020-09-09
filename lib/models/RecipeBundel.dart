import 'package:flutter/material.dart';

class RecipeBundle {
  final int id, chefs, recipe;
  final String title, description, imageSer;
  final Color color;

  RecipeBundle({
    this.id,
    this.chefs,
    this.recipe,
    this.title,
    this.description,
    this.imageSer,
    this.color
  });
}

List<RecipeBundle> recipeBundles = [
  RecipeBundle(
    id: 1,
    chefs: 16,
    recipe: 95,
    title: "Cook Something New Everyday",
    description: "New and tasty recipes every minute",
    imageSer: "assets/images/cook_new@2x.png",
    color: Color(0xffd82d40),
  ),
  RecipeBundle(
    id: 2,
    chefs: 8,
    recipe: 26,
    title: "Best of 2020",
    description: "Cook recipes for special occasions",
    imageSer: "assets/images/best_2020@2x.png",
    color: Color(0xff90af17),
  ),
  RecipeBundle(
    id: 3,
    chefs: 10,
    recipe: 43,
    title: "Food Court",
    description: "What`s your favorite food dish make it now",
    imageSer: "assets/images/food_court@2x.png",
    color: Color(0xff2dbbd8),
  ),
];