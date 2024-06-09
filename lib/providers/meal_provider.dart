import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/meal.dart';

class MealProvider with ChangeNotifier {
  Meal? _randomMeal;

  Meal? get randomMeal => _randomMeal;

  Future<void> fetchRandomMeal() async {
    const url = 'https://www.themealdb.com/api/json/v1/1/random.php';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        _randomMeal = Meal.fromJson(jsonData['meals'][0]);
        notifyListeners();
      } else {
        throw Exception('Failed to load meal');
      }
    } catch (error) {
      rethrow;
    }
  }
}
