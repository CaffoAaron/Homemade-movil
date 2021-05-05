class RecipeModel {
  List<Recipe> recipe;

  RecipeModel({this.recipe});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      recipe = new List<Recipe>();
      json['meals'].forEach((v) {
        recipe.add(new Recipe.fromJson(v));
      });
    }
  }
}

class Recipe {
  String nameRecipe;
  String instructions;
  String img;


  Recipe(
      {
        this.nameRecipe,
        this.instructions,
        this.img,
        });

  Recipe.fromJson(Map<String, dynamic> json) {
    nameRecipe = json['nameRecipe'];
    instructions = json['instructions'];
    img = json['img'];


  }
}