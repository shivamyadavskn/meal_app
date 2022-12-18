import 'package:flutter/material.dart';
import 'package:meal_app/screen/category_meals_screen.dart';
import 'package:meal_app/screen/filters_screen.dart';
import 'package:meal_app/screen/meal_detail_screen.dart';
import 'package:meal_app/screen/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
   Map<String,bool> _filters={
    'gluten':false,
    'lactose':false,
    'vegen':false,
    'Vegetarian':false,
  };
  void _setFilters(Map<String,bool>filterData){
setState(() {
  _filters=filterData;
});
  }
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
              ),
            ),
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(_setFilters),
      },
      // onGenerateRoute: (setting){
      //   return MaterialPageRoute(builder: (ctx)=>const CategoriesScreen());
      // },
    );
  }
}
