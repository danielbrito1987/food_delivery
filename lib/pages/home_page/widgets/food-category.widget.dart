import 'package:flutter/material.dart';
import 'package:food_delivery/models/category.dart';
import 'package:food_delivery/pages/home_page/widgets/food-card.widget.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> categories;

  FoodCategory({this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: this.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            categoryName: this.categories[index].strCategory,
            imagePath: this.categories[index].strCategoryThumb,
          );
        },
      ),
    );
  }
}
