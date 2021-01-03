import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MeatItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
            duration: favoriteMeals[index].duration,
            imageUrl: favoriteMeals[index].imageUrl,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }

    return Center(
      child: Text('You have no favorites yet - start adding some!'),
    );
  }
}
