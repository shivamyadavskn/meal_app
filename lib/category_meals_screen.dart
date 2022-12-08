import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName='/categories-meals';
  const CategoryMealsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: const Center(
        child: Text('Category meal'),
      ),
    );
  }
}
