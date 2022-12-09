import 'package:flutter/material.dart';
import 'package:meal_app/screen/categories_screen.dart';
import 'package:meal_app/screen/category_meals_screen.dart';
import 'package:meal_app/screen/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline1: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ))),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(ctx)=>const CategoriesScreen(),
        CategoryMealsScreen.routeName:(ctx) => const CategoryMealsScreen(),
        MealDetailScreen.routeName:(ctx)=>const MealDetailScreen(),
      },
    );
  }
}
