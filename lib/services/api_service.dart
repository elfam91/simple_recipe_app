import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:simple_recipe_app/models/recipe.dart';

class ApiService {
  static const String _apiKey = '117f848d8b644056b4a1596125e9792f';
  static const String _baseUrl = 'https://api.spoonacular.com/recipes/complexSearch';

  Future<List<Recipe>> fetchRecipes(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl?query=$query&apiKey=$_apiKey'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['results'];
      return data.map((json) => Recipe.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}

