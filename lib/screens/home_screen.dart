import 'package:flutter/material.dart';
import 'meal_screen.dart';  // Yemek tariflerinin listelendiği ekran

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Yemek Tariflerine Git'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MealScreen()),
            );
          },
        ),
      ),
    );
  }
}
