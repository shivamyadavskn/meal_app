import 'package:flutter/material.dart';
import '../dummy_data.dart';
class CategoryMealsScreen extends StatelessWidget {
  static const routeName='/categories-meals';
  const CategoryMealsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals=DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(itemCount: categoryMeals.length,
      itemBuilder: (ctx,index){
        return Image.network(categoryMeals[index].imageUrl);
      }),
    );
  }
}
