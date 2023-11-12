import 'package:flutter/material.dart';

class FavoriteModel {
  // we have two category so we have to added them

  String iconPath;
  Color boxColor;

// now we create constructor and make them required

  FavoriteModel({
    required this.iconPath,
    required this.boxColor,
  });

  static List<FavoriteModel> getFavoriteCategories() {
    List<FavoriteModel> categories = [];

    categories.add(FavoriteModel(
      iconPath: 'lib/assets/icons/image-square-svgrepo-com.svg',
      boxColor: const Color.fromARGB(255, 211, 208, 38),
    ));

    categories.add(FavoriteModel(
      iconPath: 'lib/assets/icons/image-square-svgrepo-com.svg',
      boxColor: const Color.fromARGB(255, 230, 229, 229),
    ));

    categories.add(FavoriteModel(
      iconPath: 'lib/assets/icons/image-square-xmark-svgrepo-com.svg',
      boxColor: const Color.fromARGB(255, 211, 208, 38),
    ));

    categories.add(FavoriteModel(
      iconPath: 'lib/assets/icons/image-square-check-svgrepo-com.svg',
      boxColor: const Color.fromARGB(255, 230, 229, 229),
    ));

    categories.add(FavoriteModel(
      iconPath: 'lib/assets/icons/image-square-check-svgrepo-com.svg',
      boxColor: const Color.fromARGB(255, 211, 208, 38),
    ));

    categories.add(FavoriteModel(
      iconPath: 'lib/assets/icons/image-square-svgrepo-com.svg',
      boxColor: const Color.fromARGB(255, 230, 229, 229),
    ));

    categories.add(FavoriteModel(
      iconPath: 'lib/assets/icons/image-square-check-svgrepo-com.svg',
      boxColor: const Color.fromARGB(255, 211, 208, 38),
    ));

    return categories;
  }
}
