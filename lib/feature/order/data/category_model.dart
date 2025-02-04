import 'package:maxap/core/strings/app_strings.dart';

class CategoryModel {
  final String name;
  final String imagePath;

  CategoryModel({required this.name, required this.imagePath});
}

List<CategoryModel> categories = [
  CategoryModel(name: AppStrings.cheeseAndDairy, imagePath: "assets/images/products/pro1.png"),
  CategoryModel(name: AppStrings.beverages, imagePath: "assets/images/products/pro2.png"),
  CategoryModel(name: AppStrings.consumablesAndBatteries, imagePath: "assets/images/products/pro3.png"),
  CategoryModel(name: AppStrings.essentialFoods, imagePath: "assets/images/products/pro4.png"),
  CategoryModel(name: AppStrings.paperAndDiapers, imagePath: "assets/images/products/pro5.png"),
  CategoryModel(name: AppStrings.personalCare, imagePath: "assets/images/products/pro6.png"),
  CategoryModel(name: AppStrings.grocery, imagePath: "assets/images/products/pro7.png"),
  CategoryModel(name: AppStrings.sweetsAndSnacks, imagePath: "assets/images/products/pro8.png"),
  CategoryModel(name: AppStrings.cleanersAndSanitizers, imagePath: "assets/images/products/pro9.png"),
  CategoryModel(name: AppStrings.flourAndBaking, imagePath: "assets/images/products/pro10.png"),
  CategoryModel(name: AppStrings.mineralWater, imagePath: "assets/images/products/pro11.png"),
  CategoryModel(name: AppStrings.frozenFishAndMeat, imagePath: "assets/images/products/pro12.png"),
  CategoryModel(name: AppStrings.frozenFoods, imagePath: "assets/images/products/pro13.png"),
  CategoryModel(name: AppStrings.chips, imagePath: "assets/images/products/pro14.png"),
  CategoryModel(name: AppStrings.more, imagePath: "assets/images/products/pro15.png"),
];
