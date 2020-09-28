import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/category_page/controller/category.controller.dart';
import 'package:food_delivery/pages/search_page/widgets/meal-card-search.widget.dart';
import 'package:get_it/get_it.dart';

class CategoryPage extends StatefulWidget {
  final String category;

  CategoryPage(this.category);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final controller = GetIt.I.get<CategoryController>();

  @override
  void initState() {
    super.initState();

    controller.searchByCategory(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          widget.category,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Observer(
          builder: (context) {
            return controller.isLoad
                ? Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : MealCardSearch(controller.meals);
          },
        ),
      ),
    );
  }
}
