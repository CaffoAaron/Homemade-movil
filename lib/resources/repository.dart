import 'dart:async';

import 'package:Homemade/model/categories_item_model.dart';
import 'package:Homemade/model/category_model.dart';
import 'package:Homemade/model/item_model.dart';
import 'package:Homemade/model/recipe.dart';

import 'homemade_api.dart';

class Repository {
  final homemadeApi = HomemadeApi();

  Future<ItemModel> fetchAllMeals(String type) => homemadeApi.fetchMeals(type);

  Future<ItemModel> fetchDetailMeals(int id) =>
      homemadeApi.fetchDetail(id.toString());

  Future<ItemModel> searchMeals(String name) => homemadeApi.searchMeals(name);

  Future<ItemModel> randomMeals() => homemadeApi.randomMeals();

  Future<CategoryModel> searchCategories() => homemadeApi.searchCategories();

  Future<CategoryItemModel> fetchCategories(String category) =>
      homemadeApi.fetchCategories(category);

  Future<ItemModel> getRecipe(int id) => homemadeApi.getRecipe(id);
}
