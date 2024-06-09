import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$product Detayları'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'mealImage',  // MealScreen'deki ile aynı tag.
              child: Image.network('https://via.placeholder.com/150'), // Buraya gerçek resim URL'si gelecek.
            ),
            Text('Detaylar burada gösterilecek: $product.'),
          ],
        ),
      ),
    );
  }
}
