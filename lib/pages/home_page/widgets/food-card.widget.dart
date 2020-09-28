import 'package:flutter/material.dart';
import 'package:food_delivery/pages/category_page/category_page.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;

  FoodCard({this.categoryName, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryPage(categoryName),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image(
                  image: NetworkImage(imagePath),
                  height: 65.0,
                  width: 65.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      categoryName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
