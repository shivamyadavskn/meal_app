import 'package:flutter/material.dart';

import '../model/meal.dart';
import '../widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
   final List<Meal> favoriteMeals;
  FavoriteScreen(this.favoriteMeals, {super.key});
  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(
      child: Text('Meals'),
    );
    }
    else{
return  ListView.builder(
    itemCount: favoriteMeals.length,
    itemBuilder: (ctx, index) {
      return MealItem(
        id: favoriteMeals[index].id,
        title: favoriteMeals[index].title,
        imageUrl: favoriteMeals[index].imageUrl,
        duration: favoriteMeals[index].duration,
        complexity: favoriteMeals[index].complexity,
        affordability: favoriteMeals[index].affordability,
      );
    },);
    }
  }
}
