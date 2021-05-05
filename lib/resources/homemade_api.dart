import 'dart:async';
import 'package:http/http.dart' show Client, Response;
import 'package:theMealDB_app/model/categories_item_model.dart';
import 'package:theMealDB_app/model/category_model.dart';
import 'package:theMealDB_app/model/recipe.dart';
import 'dart:convert';
import '../model/item_model.dart';
import 'dart:developer';

class HomemadeApi {
  Client client = Client();

  final String _homemadeUrl = 'https://homemade-api-tf.herokuapp.com/api';
  final String _baseUrl = 'https://www.themealdb.com/api/json/v1/1';

  Future<ItemModel> fetchMeals(String type) async {
    Response response;
    response = await client.get("$_baseUrl/filter.php?c=$type");
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load list meals');
    }
  }

  Future<ItemModel> fetchDetail(String id) async {
    Response response;
    response = await client.get("$_baseUrl/lookup.php?i=$id");
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load detail meals');
    }
  }

  Future<ItemModel> searchMeals(String name) async {
    final response = await client.get("$_baseUrl/search.php?s=$name");
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load $name meals');
    }
  }

  Future<ItemModel> randomMeals() async {
    final response = await client.get("$_baseUrl/random.php");
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load detail meals');
    }
  }

  Future<CategoryModel> searchCategories() async {
    Response response;
    response = await client.get("$_baseUrl/categories.php");
    log(response.body);
    if (response.statusCode == 200) {
      return CategoryModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load category of meals');
    }
  }

  Future<CategoryItemModel> fetchCategories(String category) async {
    Response response;
    response = await client.get("$_baseUrl/filter.php?c=$category");
    if (response.statusCode == 200) {
      return CategoryItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load list of $category meals');
    }
  }

  Future<ItemModel> getRecipe(int id) async{
    // Response response;
    // response = await client.get("https://homemade-api-tf.herokuapp.com/api/recipe/1");
    // log('GAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
    // log(response.body);
    // if(response.statusCode == 200){
    //   log("ssssssssss");
    //   return ItemModel.fromJson(json.decode(response.body));
    // }else{
    //   throw Exception('Failed to load list of $id meals');
    // }
    final response = await client.get("$_baseUrl/random.php");
    if (response.statusCode == 200) {
      log(response.body);
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load detail meals');
    }
  }
}
