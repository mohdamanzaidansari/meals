import 'package:flutter/material.dart';
import 'package:meals/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    this.id,
    this.title,
    this.color,
  }) : super(key: key);

  final String id;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      onTap: () => Navigator.pushNamed(context, CategoryMealsScreen.routeName,
          arguments: {
            'id': id,
            'title': title,
            'color': color,
          }),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.7),
                color,
              ]),
        ),
      ),
    );
  }
}
