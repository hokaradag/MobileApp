import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/meal_provider.dart';
import 'detail_screen.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealProvider = Provider.of<MealProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Meal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                mealProvider.fetchRandomMeal();
              },
              child: const Text('Get Random Meal'),
            ),
            mealProvider.randomMeal == null
                ? const Text('Press the button to get a meal.')
                : Column(
              children: [
                Hero(
                  tag: 'mealImage',  // Benzersiz bir tag ekleyin.
                  child: Image.network(mealProvider.randomMeal!.imageUrl),
                ),
                Text(mealProvider.randomMeal!.name),
                Text(mealProvider.randomMeal!.category),
                Text(mealProvider.randomMeal!.area),
                Text(mealProvider.randomMeal!.instructions),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(product: mealProvider.randomMeal!.name),
                      ),
                    );
                  },
                  child: const Text('View Details'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
