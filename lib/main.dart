import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/meal_screen.dart';
import 'providers/meal_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => MealProvider(),
      child: MaterialApp(
        title: 'Meal App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const MealScreen(),
      ),
    );
  }
}
