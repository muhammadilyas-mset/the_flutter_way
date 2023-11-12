import 'package:flutter/material.dart';

class RecommendModel {
  String name;
  String iconPath;
  String level;
  String duration;

  bool viewIsSelected;
  Color boxColor;

  RecommendModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.viewIsSelected,
    required this.boxColor,
  });

  static List<RecommendModel> getRecommendation() {
    List<RecommendModel> recommended = [];

    recommended.add(RecommendModel(
      name: 'Pine Apple',
      iconPath: 'lib/assets/icons/image-square-check-svgrepo-com.svg',
      level: 'simple',
      duration: '1000/kg',
      viewIsSelected: true,
      boxColor: const Color(0xFFD6D311),
    ));

    recommended.add(RecommendModel(
      name: 'Cherry',
      iconPath: 'lib/assets/icons/image-square-svgrepo-com.svg',
      level: 'aggregate',
      duration: '1500/kg',
      viewIsSelected: false,
      boxColor: const Color.fromARGB(255, 230, 229, 229),
    ));

    recommended.add(RecommendModel(
      name: 'Banana',
      iconPath: 'lib/assets/icons/image-square-svgrepo-com.svg',
      level: 'mutiple',
      duration: '500/dzn',
      viewIsSelected: true,
      boxColor: const Color(0xFFD6D311),
    ));

    recommended.add(RecommendModel(
      name: 'Grapes',
      iconPath: 'lib/assets/icons/image-square-check-svgrepo-com.svg',
      level: 'accessory',
      duration: '900/kg',
      viewIsSelected: true,
      boxColor: const Color.fromARGB(255, 230, 229, 229),
    ));

    recommended.add(RecommendModel(
      name: 'Orange',
      iconPath: 'lib/assets/icons/image-square-svgrepo-com.svg',
      level: 'multiple',
      duration: '800/kg',
      viewIsSelected: false,
      boxColor: const Color(0xFFD6D311),
    ));

    recommended.add(RecommendModel(
      name: 'Mango',
      iconPath: 'lib/assets/icons/image-square-svgrepo-com.svg',
      level: 'simple',
      duration: '700/kg',
      viewIsSelected: true,
      boxColor: const Color.fromARGB(255, 230, 229, 229),
    ));

    return recommended;
  }
}
