import 'package:flutter/material.dart';
import '../model/meal.dart';
import '../widgets/main_drawer.dart';
import '../screen/categories_screen.dart';
import '../screen/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  List<Meal> favoriteMeals=[];
   TabsScreen(this.favoriteMeals, {super.key});
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentSelectedIndex = 0;
  late List<Map<String, Object>> _pages;
  @override
  void initState() {
    _pages = [
      {'page': const CategoriesScreen(), 'title': 'Categories'},
      {'page': FavoriteScreen(widget.favoriteMeals), 'title': 'Your Favorite'},
    ];
    super.initState();
  }
  void _selectPage(int index) {
    setState(() {
      _currentSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_currentSelectedIndex]['title'].toString()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.blueGrey.shade600,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        currentIndex: _currentSelectedIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey,
            icon: Icon(
              Icons.category,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.blueGrey,
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorite'),
        ],
      ),
      drawer: const MainDrawer(),
      body: _pages[_currentSelectedIndex]['page'] as Widget,
    );
  }
}
